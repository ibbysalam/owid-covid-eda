# 🌍 Data Starter NG

Welcome to **Data Starter NG** — a beginner-friendly space to practice data analytics, build real-world projects, and grow your portfolio one challenge at a time.

Whether you're new to data or stuck in tutorial hell, this initiative is designed to help you **break in through doing**. Each project is simple, real, and meant to make you think like an analyst.

---

## 🧠 Project 1: OWID COVID-19 Data Analysis

**Objective:**  
Analyze the global impact of COVID-19 using the [Our World in Data COVID-19 dataset](https://ourworldindata.org/covid-deaths). Gain insights into how the pandemic affected countries over time and practice working with real-world, messy data.

## 🛠 SQL View Setup

To simplify querying, we've created a **SQL view** that selects only the relevant columns you'll need for your analysis.

> 📄 You'll find this view inside the `sql/` folder of this repository as:

sql/create_covid_view.sql

This view pulls in population, case counts, deaths, vaccinations, and more — all filtered to remove irrelevant locations like 'World' or 'International'.

> 💡 **Why use a view?**  
It helps you avoid repeating filtering logic and keeps your analysis clean and focused.

---

### 🔍 Insights We'll Explore

> These are practical business-style questions we'll answer using SQL:

1. **Worst hit day per country**  
   _What day did each country record its highest number of new cases?_

2. **Countries with the highest deaths**  
   _Which countries had the highest total COVID-19 deaths?_

3. **7-day average new cases**  
   _How did new cases trend over time using a rolling 7-day average?_

4. **Deaths vs Population**  
   _How many deaths were recorded compared to population size?_

5. **Vaccination Progress**  
   _Which countries vaccinated the most people and when?_

6. **Continental comparisons**  
   _How did Africa fare compared to Europe, Asia, etc.?_

7. **Monthly new case trends**  
   _Are there patterns in case spikes by month or year?_

8. **Peak periods by continent**  
   _When did each continent face its worst COVID wave?_

9. **Case fatality ratio**  
   _What percentage of confirmed cases resulted in deaths per country?_

10. **Recovery or not?**  
   _Did some countries bounce back faster than others based on new case trends and vaccination rates?_

> 💡 *Why these insights?*  
They simulate the kind of questions businesses, governments, or NGOs might ask analysts. They also help beginners practice joins, aggregations, window functions, and date filtering.

---

## 🗂️ Project Resources

- [OWID COVID-19 Dataset (CSV)](https://github.com/owid/covid-19-data/tree/master/public/data)
- [SSMS](https://learn.microsoft.com/en-us/ssms/install/install)
- SQL Practice Tool: [DB Fiddle](https://www.db-fiddle.com/)

---

## 🧰 Tools Used

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

- Project 2: Customer Churn Analysis

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

