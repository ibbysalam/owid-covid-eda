CREATE OR ALTER VIEW dbo.clean_covid_insights AS

-- Removing blank values and changing data types
WITH pre AS (
    SELECT
        LTRIM(RTRIM(location))           AS location,
        TRY_CAST(date AS date)           AS report_date,
        TRY_CAST(new_cases        AS float) AS new_cases_raw,
        TRY_CAST(total_cases       AS float) AS total_cases_raw,
        TRY_CAST(new_deaths        AS float) AS new_deaths_raw,
        TRY_CAST(total_deaths      AS float) AS total_deaths_raw,
        TRY_CAST(population        AS float) AS population_raw,
        TRY_CAST(people_vaccinated AS float) AS people_vaccinated_raw,
		TRY_CAST(icu_patients AS float) AS icu_patients,
		TRY_CAST(icu_patients_per_million AS float) AS icu_patients_per_million

    FROM dbo.[owid-covid-data]
    WHERE location IS NOT NULL
      AND date IS NOT NULL
)
SELECT
    location,
    report_date,
	icu_patients,
	icu_patients_per_million,

-- Removing negative values
    CASE WHEN new_cases_raw        < 0 THEN NULL ELSE new_cases_raw        END AS new_cases,
    CASE WHEN total_cases_raw      < 0 THEN NULL ELSE total_cases_raw      END AS total_cases,
    CASE WHEN new_deaths_raw       < 0 THEN NULL ELSE new_deaths_raw       END AS new_deaths,
    CASE WHEN total_deaths_raw     < 0 THEN NULL ELSE total_deaths_raw     END AS total_deaths,
    CASE WHEN population_raw      <= 0 THEN NULL ELSE population_raw       END AS population,
    CASE WHEN people_vaccinated_raw< 0 THEN NULL ELSE people_vaccinated_raw END AS people_vaccinated
FROM pre;

select *
from [dbo].[clean_covid_insights]
