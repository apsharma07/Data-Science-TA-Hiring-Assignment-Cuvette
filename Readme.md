# 📘 README.md – Data Science TA Hiring Assignment (Cuvette)

## 🧠 Objective
The goal of this assignment is to evaluate technical proficiency, problem-solving, and teaching ability in a Data Science context. This project covers Python (ML), SQL, Tableau, Excel, and reflection using AI tools.

---

## ✅ Section 1: Python + Machine Learning
### Dataset: Student Performance Dataset (Math & Portuguese)

### Tasks Completed:
- Loaded and cleaned the dataset (handled nulls, encoded categorical variables).
- Performed Exploratory Data Analysis (EDA) using Seaborn and Matplotlib.
- Engineered a new binary target variable `Pass_Fail`:
  - A student is labeled as "Pass" only if they scored more than 40 in **each subject** (G1, G2, G3).
- Applied classification models:
  - Logistic Regression
  - Random Forest Classifier
- Evaluated models using:
  - Accuracy
  - Confusion Matrix
  - F1-Score
- Explained steps with markdown and code comments.

---

## ✅ Section 2: SQL – Chinook Database
### Tasks Completed:
- Loaded the MySQL container using Docker.
- Accessed the Chinook database using terminal-based MySQL shell.
- Executed and validated queries for:
  - Top 5 customers by total purchase amount.
  - Most popular genre by total tracks sold.
  - All managers and their subordinates.
  - Most sold album per artist.
  - Monthly sales trends for the year 2013.

Tools: MySQL using Docker, queries saved in `.sql` file with screenshots.

---

## ✅ Section 3: Tableau – Airbnb Listings NYC
### Tasks Completed:
- Loaded the CSV file into Tableau using the "Text File" option.
- Created visualizations for:
  - Listing count by neighborhood
  - Price distribution per room type
  - Availability trends
- Applied filters for **Room Type** and **Neighborhood** in each visualization.
- Combined all views into an interactive **Dashboard**.
- Published the dashboard on Tableau Public (link in submission).

---

## ✅ Section 4: Excel – Online Retail Dataset
### Tasks Completed:
- Cleaned the dataset (removed nulls, handled duplicates).
- Created Pivot Table for total sales by Country and Month.
- Added formulas:
  - **Average Order Value**: Total Sales / Number of Orders
  - **% Contribution by Country**: Country Sales / Total Sales
- Applied Conditional Formatting to highlight **Top 5 Countries** by revenue.
- Created a chart to visualize **Monthly Revenue Trend**.

---

## ✅ Section 5: Bonus (Optional)
### Prompt:
**How would you support struggling students and explain complex topics?**

### Response:
> I would support students by maintaining open communication, offering 1:1 sessions, and breaking concepts into manageable chunks. I’d help them manage deadlines by encouraging incremental progress. For complex topics like Gradient Descent, I’d begin with intuition (hill-climbing analogy), then introduce the math behind derivatives and learning rate using simple visuals and step-by-step examples.

---

## ✅ Section 6: AI Tools & LLMs
### Prompt Used:
"Write a SQL query to find each artist's most sold album using Chinook Database."

### Response:
The AI generated a nested query using GROUP BY and subqueries to compare album sales per artist.

### Reflection:
- ✅ What the AI did well: Helped draft a complex query structure quickly.
- 🔧 Modified: Adjusted to resolve aliasing and column scope issues for compatibility with MySQL.

---

## 📹 Screen Recording
A 12-minute video has been recorded explaining all sections and walkthrough of the Jupyter Notebook, SQL queries, Tableau dashboard, and Excel analysis.

📌 [Link to Video](#)

---

## 📁 Submission Structure:
```
🔺 Python_ML_StudentPerformance.ipynb
🔺 SQL_Chinook_Queries.sql
🔺 Excel_OnlineRetail_Analysis.xlsx
🔺 Tableau_Dashboard_Link.txt
🔺 AI_Prompt_and_Reflection.txt
🔺 Bonus_Response.txt
🔺 README.md
🔺 screen_recording.mp4
```

---

Author- Ankit Kumar
