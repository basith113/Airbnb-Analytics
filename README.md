

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


