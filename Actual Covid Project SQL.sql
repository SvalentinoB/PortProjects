SELECT *
FROM PortfolioProject..CovidDeaths
Order by 3,4

--SELECT *
--FROM PortfolioProject..CovidVaccinations
--Order by 3,4

SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject..CovidDeaths
Order by 1,2

-- Looking at Total Cases vs Total Deaths
-- Shows likelihood of dying if you contact covid in Ukraine

SELECT Location, date, total_cases, total_deaths, 
(CONVERT(float, total_deaths) /
NULLIF(Convert(float, total_cases),0)) * 100 AS Deathspercentage
FROM PortfolioProject..CovidDeaths
Where location like '%ukraine%'
Order by 1,2


--Looking at Total Cases vs Population
-- Shows what percentage of population got Covid

SELECT Location, date, population, total_cases, 
(CONVERT(float, total_cases) /
NULLIF(Convert(float, population),0)) * 100 AS PercentPopulationInfected
FROM PortfolioProject..CovidDeaths
WHERE continent is not null
--Where location like '%ukraine%'
Order by 1,2


-- Looking at Countries with Highest Infection Rate Compared to Population

--SELECT Location, population, MAX(total_cases) as HighestInfectionCount, 
--MAX((CONVERT(float, total_cases) /
--NULLIF(Convert(float, population),0))) * 100 AS PercentPopulationInfected
--FROM PortfolioProject..CovidDeaths
--WHERE continent is not null
--GROUP BY Location, Population
--Order by PercentPopulationInfected Desc

-- Looking at Countries with Highest Infection Rate Compared to Population 2

SELECT Location, Population, MAX(total_cases) as HighestInfectionCount, 
MAX((total_cases/population))*100 as PercentPopulationInfected
FROM PortfolioProject..CovidDeaths
WHERE continent is not null
GROUP BY Location, Population
Order by PercentPopulationInfected Desc


-- Showing Countries with Highest Deaths Count per Population

SELECT Location, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProject..CovidDeaths
WHERE continent is not null
GROUP BY Location
Order by TotalDeathCount desc


--SELECT *
--FROM PortfolioProject..CovidDeaths
--WHERE continent is not null
--Order by 3,4


-- Let's Break Things Down By Continent


SELECT Continent, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProject..CovidDeaths
WHERE continent is not null
GROUP BY Continent
Order by TotalDeathCount desc


--Showing continents with the highest death count per population

SELECT Continent, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProject..CovidDeaths
WHERE continent is not null
GROUP BY Continent
Order by TotalDeathCount desc


--Global Numbers

SELECT SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, 
SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
FROM PortfolioProject..CovidDeaths
--Where location like '%ukraine%'
WHERE continent is not null
--GROUP BY date
Order by 1,2

--Looking at Total Population vs Vaccination


SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(bigint, vac.new_vaccinations)) OVER (Partition by dea.location ORDER BY dea.location, CONVERT(date, dea.Date)) as RollingPeopleNewVaccination
FROM PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
	WHERE dea.continent is not NULL
	ORDER BY 2,3


--USE CTE

With PopvsVaac (Continent, Location, Date, Population, New_vaccination, RollingPeopleNewVaccinated)
AS
(
	SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(bigint, vac.new_vaccinations)) OVER (Partition by dea.location ORDER BY dea.location, CONVERT(date, dea.Date)) as RollingPeopleNewVaccinated
FROM PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
	WHERE dea.continent is not NULL
	--ORDER BY 2,3
)
Select *, (RollingPeopleNewVaccinated/Population) * 100
From PopvsVaac


--Temp Table


DROP Table if exists #PercentPopulationVaccinated
CREATE TABLE #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
New_vaccinations numeric,
RollingPeopleNewVaccinated numeric
)

INSERT INTO #PercentPopulationVaccinated
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(bigint, vac.new_vaccinations)) OVER (Partition by dea.location ORDER BY dea.location, CONVERT(date, dea.Date)) as RollingPeopleNewVaccinated
FROM PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
	--WHERE dea.continent is not NULL
	--ORDER BY 2,3

Select *, (RollingPeopleNewVaccinated/Population) * 100
From #PercentPopulationVaccinated



--Creating View to stire data for later visualization


CREATE View PercentPopulationVaccinated as
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(bigint, vac.new_vaccinations)) OVER (Partition by dea.location ORDER BY dea.location, CONVERT(date, dea.Date)) as RollingPeopleNewVaccinated
FROM PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
	WHERE dea.continent is not NULL
	--ORDER BY 2,3


SELECT *
FROM PercentPopulationVaccinated