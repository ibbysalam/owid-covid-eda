-- Worst Day per Country (Highest New Cases) - Find the single worst day of new infections worldwide.
use owid_covid

select
	report_date,
	continent,
	location,
	new_cases
from clean_covid_insights
where continent != ''
order by new_cases desc

-- Countries with the highest deaths (Which countries had the highest total COVID-19 deaths?)
select
	location,
	max(total_deaths) as latest_deaths
	from clean_covid_insights
	where continent != ''
	group by location
	order by latest_deaths desc



-- Global New Cases Over Time (Daily global total of reported new cases.)
select
	report_date,
	location,
	sum(new_cases) as new_cases_summary
from clean_covid_insights
where continent != ''
group by report_date, location
order by report_date


-- 7-day average new cases (How did new cases trend over time using a rolling 7-day average?)
select
	report_date,
	location,
	avg(new_cases) over(
	partition by location
	order by report_date
	rows between 6 preceding and current row
	) as avg_cases_7_days
	from clean_covid_insights
	where continent != '' and
	location = 'Nigeria'


-- Monthly Case Spikes (Identify months with the biggest worldwide surges.)
select
	year(report_date) as year,
	new_cases
from clean_covid_insights
order by new_cases desc


-- Deaths vs Population (How many deaths were recorded compared to the population size?)
select
	location,
	max(total_deaths) as latest_deaths,
	max(population) as latest_population,
	round(max(total_deaths) * 100 / max(population), 2) as deaths_vs_population
from clean_covid_insights
group by location
order by deaths_vs_population desc


-- Case Fatality Ratio (CFR) (Percentage of confirmed cases that resulted in death.)
select
	top(10)
	location,
	max(total_deaths) as latest_deaths,
	max(total_cases) as latest_cases,
	round(max(total_deaths) * 100 / nullif(max(total_cases), 0), 2) as case_fatality_ratio
from clean_covid_insights
where continent != ''
group by location
order by case_fatality_ratio desc
