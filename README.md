## Project 1: OWID COVID-19 Data Analysis

**Objective:**  
Analyze the global impact of COVID-19 using the [Our World in Data COVID-19 dataset](https://ourworldindata.org/covid-deaths). Gain insights into how the pandemic affected countries over time and practice working with real-world, messy data.

## SQL View Setup

To simplify querying, I've created a **SQL view** that selects only the relevant columns you'll need for your analysis.

> 📄 You'll find this view inside the `sql/` folder of this repository as:

sql/create_covid_view.sql

This view pulls in population, case counts, deaths, vaccinations, and more — all filtered to remove irrelevant locations like 'World' or 'International'.

> 💡 **Why use a view?**  
It helps you avoid repeating filtering logic and keeps your analysis clean and focused.

---

### Insights We'll Explore

> These are practical business-style questions we'll answer using SQL:

- Worst Day per Country (Highest New Cases) - Find the single worst day of new infections worldwide.
- Countries with the highest deaths (Which countries had the highest total COVID-19 deaths?)
- Global New Cases Over Time (Daily global total of reported new cases.)
- 7-day average new cases (How did new cases trend over time using a rolling 7-day average?)
- Monthly Case Spikes (Identify months with the biggest worldwide surges.)
- Deaths vs Population (How many deaths were recorded compared to the population size?)
- Case Fatality Ratio (CFR) (Percentage of confirmed cases that resulted in death.)

> 💡 *Why these insights?*  
They simulate the kind of questions businesses, governments, or NGOs might ask analysts. They also help beginners practice joins, aggregations, window functions, and date filtering.

---

## 🗂️ Project Resources

- [OWID COVID-19 Dataset (CSV)](https://github.com/owid/covid-19-data/tree/master/public/data)
- [SSMS](https://learn.microsoft.com/en-us/ssms/install/install)
- SQL Practice Tool: [DB Fiddle](https://www.db-fiddle.com/)

---

## Tools Used

- SQL (SSMS)

---

## 💬 How to Participate

1. Clone this repo or download the dataset.
2. Go through the project brief above.
3. Share your queries, insights, or visualizations in the community.
4. Got questions? Ask! We're all learning here.

---

Got feedback or want to contribute your own project ideas or walkthroughs?  
Send a DM!




