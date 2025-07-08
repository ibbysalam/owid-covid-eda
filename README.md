# 🌍 Data Starter NG

Welcome to **Data Starter NG** — a beginner-friendly space to practice data analytics, build real-world projects, and grow your portfolio one challenge at a time.

Whether you're new to data or stuck in tutorial hell, this initiative is designed to help you **break in through doing**. Each project is simple, real, and meant to make you think like an analyst.

---

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

1. Worst Day per Country (Highest New Cases) - Find the single worst day of new infections worldwide.
2. Countries with the highest deaths (Which countries had the highest total COVID-19 deaths?)
3. Global New Cases Over Time (Daily global total of reported new cases.)
4. 7-day average new cases (How did new cases trend over time using a rolling 7-day average?)
5. Monthly Case Spikes (Identify months with the biggest worldwide surges.)
6. Deaths vs Population (How many deaths were recorded compared to the population size?)
7. Case Fatality Ratio (CFR) (Percentage of confirmed cases that resulted in death.)

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

## 🧑🏽‍💻 About Data Starter NG

**Data Starter NG** is built by learners, for learners. It’s a free challenge-based learning journey for anyone looking to:
- Build a data portfolio
- Practice hands-on
- Escape tutorial hell
- Stay consistent and accountable

We believe **"you learn best by doing."**

Follow us on:
- 🐦 Twitter: [@datastarterng](https://twitter.com/datastarterng)

---

## 📌 Upcoming Projects

- Project 2: Loan Approval Dashboard w/ Power BI

---

## 🤝 Contribute

Got feedback or want to contribute your own project ideas or walkthroughs?  
Send a DM!

---

## 📫 Contact

Feel free to reach out or tag us if you're sharing your projects online.  
We’d love to hype your work! 💪

---

## ⭐ Stay Consistent, Stay Curious

If you're here, you already took the first step. Keep going. 🚀

