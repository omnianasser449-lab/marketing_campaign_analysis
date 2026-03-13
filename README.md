# 📊 Marketing Campaign Performance Analysis
### SQL Portfolio Project | MySQL

---

## 📌 Project Overview

This project analyzes the performance of **50 marketing campaigns** across 5 campaign types — Email, Search, Social Media, Display, and Influencer — to identify which campaigns drive the most revenue, best conversion rates, and strongest ROI.

The analysis was performed entirely in **MySQL** using real-world SQL techniques.

---

## 🔧 Tools Used
- **MySQL Workbench** — query execution
- **SQL** — data analysis
- **GitHub** — portfolio hosting

---

## 🧠 SQL Skills Used

| Skill | Where Used |
|-------|-----------|
| `JOIN` | Combining campaigns and metrics tables |
| `GROUP BY` | Aggregating data by campaign type |
| `SUM / ROUND` | Calculating totals and clean decimals |
| `NULLIF` | Safe division to avoid divide by zero errors |
| `CTE` | Breaking complex queries into readable steps |
| `Window Functions` | Ranking campaigns by revenue |
| `CASE WHEN` | Flagging campaigns as High / Mid / Low performers |
| `ORDER BY` | Sorting results by best performance |

---

## 📈 Analyses Performed

| # | Business Question | Skills Used |
|---|------------------|-------------|
| 1 | Which campaign type drives the most revenue? | JOIN + GROUP BY |
| 2 | What is each campaign's conversion rate and cost? | JOIN + NULLIF + ROUND |
| 3 | Which campaign type has the best ROI? | CTE + calculations |
| 4 | Rank all campaigns by performance | CTE + Window Functions + CASE WHEN |

---

## 💡 Key Findings

**1. Email is the strongest channel** across all metrics — highest revenue ($651K), best conversion rate (6.36%), and strongest ROI (192%). Should receive the largest budget allocation.

**2. Search is a consistent second** — strong ROI (179%) and the lowest cost per conversion ($49.89). Highly efficient and worth scaling.

**3. Display campaigns are underperforming** — the only campaign type with ROI below 100% (98.35%), meaning it barely breaks even. Budget should be reviewed or reallocated.

**4. Social Media has a conversion problem** — despite decent revenue, its conversion rate (2.62%) and cost per conversion ($164.38) are the worst across all channels.

**5. Influencer campaigns are expensive** — lowest ROI after Display. Needs deeper audience targeting to improve efficiency.

---
