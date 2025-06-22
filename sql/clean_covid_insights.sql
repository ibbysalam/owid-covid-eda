CREATE VIEW clean_covid_insights AS
SELECT
    location,
    continent,
    date::date AS report_date,
    population,
    total_cases,
    new_cases,
    total_cases_per_million,
    new_cases_smoothed,
    total_deaths,
    new_deaths,
    total_deaths_per_million,
    new_deaths_smoothed,
    total_vaccinations,
    people_vaccinated,
    people_fully_vaccinated,
    total_boosters,
    new_vaccinations_smoothed,
    people_vaccinated_per_hundred,
    hosp_patients,
    hosp_patients_per_million,
    icu_patients,
    icu_patients_per_million,
    total_tests,
    new_tests,
    positive_rate,
    CASE
        WHEN total_cases > 0 THEN total_deaths * 100.0 / total_cases
        ELSE NULL
    END AS case_fatality_rate,
    new_cases_smoothed_per_million
FROM [dbo].[Covid_Deaths]
WHERE continent IS NOT NULL
  AND total_cases IS NOT NULL
  AND new_cases >= 0
  AND total_deaths >= 0;
