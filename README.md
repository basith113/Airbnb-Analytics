

---



\## 🥉 Bronze Layer

\- Raw ingestion layer

\- Pulls data directly from Snowflake staging tables

\- No transformations applied



---



\## 🥈 Silver Layer

\- Data cleaning and standardization

\- Type casting and null handling

\- Business logic applied

\- Separate models for:

&nbsp; - Listings

&nbsp; - Hosts

&nbsp; - Bookings



---



\## 🥇 Gold Layer

Analytics-ready models built using \*\*three approaches\*\*:



\### 1️⃣ One Big Table (OBT)

\- Built using dbt configuration and metadata-driven logic

\- Combines listings, hosts, and bookings

\- Optimized for BI tools



\### 2️⃣ Dimensional Modeling

\- \*\*1 Fact table\*\*

\- \*\*3 Dimension tables\*\*

&nbsp; - dim\_listings

&nbsp; - dim\_hosts

&nbsp; - dim\_dates

\- Follows analytics engineering best practices



\### 3️⃣ Ephemeral Models

\- Used for intermediate transformations

\- Improves performance

\- Avoids unnecessary materialization



---



\## 🧩 dbt Features Used

\- \*\*Macros\*\* (reusable business logic)

\- \*\*Snapshots\*\* (track historical changes)

\- \*\*Sources\*\* (raw Snowflake tables)

\- \*\*Tests\*\* (not null, unique, relationships)

\- \*\*Ephemeral models\*\*

\- \*\*Incremental models\*\*



---



\## 🚀 Version Control \& Deployment

\- Feature-based development

\- Clean Git commit history

\- Sensitive files excluded using `.gitignore`

\- Deployed to GitHub using `main` branch

\- `profiles.yml` kept local for security



---



\## 📈 What This Project Demonstrates

\- End-to-end analytics engineering workflow

\- Strong dbt fundamentals and advanced usage

\- Snowflake data ingestion and modeling

\- Production-level GitHub project structure

\- Interview-ready real-world project



---



\## 🧠 Interview Explanation (Short)

> I built an end-to-end Airbnb analytics project where data is ingested from S3 into Snowflake, transformed using dbt with a bronze–silver–gold architecture, implemented fact and dimension models, used macros, snapshots, ephemeral models, and deployed the project to GitHub following best practices.



---



\## 👤 Author

\*\*Basith\*\*  

Data Analyst / Analytics Engineer  

Open to UAE \& Global Opportunities



