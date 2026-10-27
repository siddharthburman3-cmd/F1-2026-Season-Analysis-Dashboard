# 🏎️ F1 2026 Season Analysis Dashboard

An executive-level interactive business intelligence project analyzing the **2026 FIA Formula One World Championship** season through Round 19 (Data as of October 27, 2026). This repository combines a structured relational database, custom SQL data queries, and an interactive Power BI dashboard.

---

## 📊 Dashboard Preview

<img width="1917" height="1078" alt="Screenshot 2026-10-27 005845" src="https://github.com/user-attachments/assets/8da57363-caea-4a02-8b49-71206bc3c54d" />

---

## 🛠️ Tech Stack & Architecture

* **Database:** MySQL (Localhost, relational table structure).
* **Data Source:** Microsoft Excel (`F1_DB.xlsx` - 24 rounds × 11 fields).
* **Data Processing & Analytics:** SQL, Pandas.
* **Data Visualization:** Power BI Desktop (Interactive 1920×1080 executive dashboard layout).
* **Reporting & Documentation:** Microsoft Word (`.docx`) & PowerPoint (`.pptx`).

---

## 📈 Executive Summary & Key Metrics

* **Races Scheduled:** 24 rounds across 21 countries.
* **Races Completed:** 18 completed rounds (1 cancellation: Saudi Arabian Grand Prix).
* **Total Laps Raced:** 1,080 laps (averaging 60 laps per race).
* **Diverse Winners:** 6 different drivers and 4 winning constructors.
* **Mercedes Dominance:** Mercedes secured 12 of the 18 completed wins (67%), with rookie sensation **Kimi Antonelli** taking 9 victories (50% of the entire season's wins).

---

## 📂 Repository Contents

| File Name | Description |
| :--- | :--- |
| `F1_2026_Season_Analysis_Dashboard.pbix` | Complete Power BI interactive report file containing KPI banner, custom F1 team colors, slicers, and relational charts[cite: 8, 9]. |
| `F1_DB.xlsx` | Raw relational dataset containing round-by-round calendar, circuit details, winners, teams, and lap metrics. |
| `f1_analysis_queries.sql` | Production SQL queries used for database validation, win aggregations, and lap analysis. |
| `F1 2026 Season Analysis Report.docx` | Comprehensive written analytical report covering team performance, calendar geography, and data findings. |
| `F1 2026 Season Analysis.pptx` | Professional executive presentation slide deck. |
| `Screenshot 2026-10-27 005845.jpg` | High-resolution visual capture of the Power BI dashboard interface. |

---

## ⚙️ Power BI Dashboard Structure

The dashboard is structured into three clear visual tiers:
1. **Executive KPI Banner:** Dynamic metric cards tracking *Total Races* (24), *Completed Races* (18), *Total Laps* (1,080), and *Race Winners* (6).
2. **Performance Breakdowns:** 
   * **Wins by Driver** (Horizontal Bar Chart).
   * **Wins by Constructor** (Donut Chart with official team livery hex codes and custom label styling).
3. **Operational Drill-Downs:** 
   * **Constructor vs. Driver Contribution** (Stacked Bar Chart showing teammate win splits).
   * **Grand Prix Results Table & Interactive Slicer** (Status toggle for *Completed* vs. *Upcoming* rounds).

---

## 🚦 SQL Query Highlights

Sample aggregation query used to calculate constructor win shares from the local MySQL database:

```sql
SELECT `Winning Team`, COUNT(*) AS Wins 
FROM f1_database.f1_db 
WHERE Status = 'Completed' 
GROUP BY `Winning Team` 
ORDER BY Wins DESC;
