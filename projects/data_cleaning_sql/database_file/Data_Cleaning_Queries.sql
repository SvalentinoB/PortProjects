			--Cleaning Data in SQL Queries


SELECT *
From PortfolioProject.dbo.NashvilleHousing


			-- Standardize Date Format

SELECT SaleDateConverted, CONVERT(Date,SaleDate)
From PortfolioProject.dbo.NashvilleHousing

UPDATE NashvilleHousing
SET SaleDate = CONVERT(Date,SaleDate)

ALTER TABLE NashvilleHousing
Add SaleDateConverted Date;

UPDATE NashvilleHousing
SET SaleDateConverted = CONVERT(Date,SaleDate)


			-- Populate Property Address data

SELECT PropertyAddress
From PortfolioProject.dbo.NashvilleHousing
--WHERE PropertyAddress is NULL
Order By ParcelID


SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress,b.PropertyAddress)
From PortfolioProject.dbo.NashvilleHousing a
JOIN PortfolioProject.dbo.NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress is NULL


UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
From PortfolioProject.dbo.NashvilleHousing a
JOIN PortfolioProject.dbo.NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress is NULL


			-- Breaking out Address into Individual Columns (Address, City, State)

SELECT PropertyAddress
From PortfolioProject.dbo.NashvilleHousing
--WHERE PropertyAddress is NULL
--Order By ParcelID

SELECT
SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 ) as Address,
SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1 , LEN(PropertyAddress)) as Address


From PortfolioProject.dbo.NashvilleHousing


ALTER TABLE NashvilleHousing
Add PropertySplitAddress Nvarchar(255);

UPDATE NashvilleHousing
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 )


ALTER TABLE NashvilleHousing
Add PropertySplitCity Nvarchar(255);

UPDATE NashvilleHousing
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1 , LEN(PropertyAddress))


SELECT *
From PortfolioProject.dbo.NashvilleHousing


SELECT OwnerAddress
From PortfolioProject.dbo.NashvilleHousing


SELECT
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3),
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2),
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)
From PortfolioProject.dbo.NashvilleHousing



ALTER TABLE NashvilleHousing
Add OwnerSplitAddress Nvarchar(255);

UPDATE NashvilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)


ALTER TABLE NashvilleHousing
Add OwnerSplitCity Nvarchar(255);

UPDATE NashvilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)


ALTER TABLE NashvilleHousing
Add OwnerSplitState Nvarchar(255);

UPDATE NashvilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)



			-- Change Y and N to Yes and No in "Sold as Vacant" field


SELECT Distinct(SoldAsVacant), Count(SoldAsVacant) AS CountedSoldAsVacant
From PortfolioProject.dbo.NashvilleHousing
Group By SoldAsVacant
Order By 2


SELECT SoldAsVacant,
 CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
	  WHEN SoldAsVacant = 'N' THEN 'No'
	  ELSE SoldAsVacant
	  END
 From PortfolioProject.dbo.NashvilleHousing


 UPDATE PortfolioProject.dbo.NashvilleHousing
 SET SoldAsVacant = CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
	  WHEN SoldAsVacant = 'N' THEN 'No'
	  ELSE SoldAsVacant
	  END


			-- Remove Duplicates


WITH RowNumCTE AS(
SELECT *,
	ROW_NUMBER() OVER (
	Partition BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

 From PortfolioProject.dbo.NashvilleHousing
 )
 SELECT *
 FROM RowNumCTE
 WHERE row_num > 1
 --Order By PropertyAddress



			-- Delete Unused Columns


 SELECT *
  From PortfolioProject.dbo.NashvilleHousing

  ALTER TABLE PortfolioProject.dbo.NashvilleHousing
  DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress, SaleDate