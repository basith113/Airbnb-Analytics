🏡 Airbnb Analytics Platform

End-to-End Analytics Engineering Project using Snowflake & dbt

<p align="center"> <b>Cloud Data Ingestion • Analytics Engineering • dbt Best Practices • Production-Ready GitHub Project</b> </p>
📌 Project Summary

This project is a production-style, end-to-end analytics engineering pipeline built to simulate how modern data teams ingest, transform, and model data for analytics and business intelligence.

The project demonstrates:

Cloud-based ingestion from AWS S3

Scalable data warehousing using Snowflake

Analytics transformations using dbt

Industry-standard Bronze → Silver → Gold architecture

Fact & Dimension modeling

Advanced dbt concepts (macros, snapshots, tests, ephemeral models)

Clean Git & GitHub practices

🎯 Business Use Case

Airbnb-style platforms generate large volumes of data related to:

Property listings

Hosts

Bookings and reservations

The goal of this project is to:

Centralize raw data in a cloud warehouse

Transform raw data into analytics-ready datasets

Enable reporting on pricing, bookings, hosts, and property performance

Provide clean, reusable tables for BI tools

🧱 High-Level Architecture
AWS S3 (Raw Files)
        ↓
Snowflake (Raw Tables)
        ↓
dbt Bronze Models
        ↓
dbt Silver Models
        ↓
dbt Gold Models
        ↓
BI / Analytics Consumption

🛠 Tech Stack
Layer	Technology
Cloud Storage	AWS S3
Data Warehouse	Snowflake
Transformation	dbt
Language	SQL
Environment Mgmt	UV (instead of pip)
Version Control	Git & GitHub
📂 Source Data

The project uses three raw datasets, stored in AWS S3:

Dataset	Description
Listings	Property-level information
Hosts	Host and owner details
Bookings	Reservation and booking data
❄️ Snowflake Implementation
1️⃣ Database & Schema Setup

Created a dedicated Snowflake database

Segregated schemas for raw and transformed data

2️⃣ File Formats & Stages

Defined file formats (CSV/Parquet)

Created external stages pointing to AWS S3 locations

3️⃣ Data Ingestion

Data loaded using:

COPY INTO <table>
FROM @<s3_stage>


This mirrors real production ingestion patterns.

🔄 dbt Project Structure
models/
├── bronze/
├── silver/
├── gold/
├── ephemeral/
├── snapshots/
├── tests/

macros/


Each layer has a clear responsibility, making the project easy to scale and maintain.

🥉 Bronze Layer – Raw Data Models

Purpose:

Acts as the raw ingestion layer

Minimal transformation

Schema alignment only

Key Characteristics:

One-to-one mapping with Snowflake raw tables

No business logic

Serves as a reliable base for downstream models

🥈 Silver Layer – Clean & Business-Ready Data

Purpose:

Clean, standardize, and enrich raw data

Apply business rules

Prepare data for analytics modeling

Key Transformations:

Data type casting

Null handling

De-duplication

Referential integrity checks

Logical joins between datasets

Silver Models Created:

silver_listings

silver_hosts

silver_bookings

🥇 Gold Layer – Analytics & Reporting Models

The Gold layer is designed for direct consumption by BI tools and analysts.

✅ Approach 1: One Big Table (OBT)

Combines listings, hosts, and bookings

Optimized for dashboard performance

Built using dbt configuration and metadata-driven logic

✅ Approach 2: Dimensional Modeling

Implemented a star schema:

Fact Table

fact_bookings

Dimension Tables

dim_listings

dim_hosts

dim_dates

This approach supports:

Scalable analytics

Clear business definitions

Reusability across dashboards

✅ Approach 3: Ephemeral Models

Used for intermediate transformations

Avoids unnecessary materialization

Improves performance and reduces storage cost

🧩 Advanced dbt Features Used
🔁 Incremental Models

Efficient handling of growing datasets

Processes only new or updated records

🧠 Macros

Reusable SQL logic

Centralized business rules (example: tagging logic)

📸 Snapshots

Track historical changes in slowly changing dimensions

Useful for auditing and trend analysis

🧪 Tests

not_null

unique

Relationship tests

Ensures data quality and reliability

🔗 Sources

Raw Snowflake tables defined as dbt sources

Enables freshness and schema tests

🔐 Security & Best Practices

profiles.yml excluded using .gitignore

No secrets committed to GitHub

Clean separation between local config and source code

Production-style Git workflow

🚀 Deployment & Version Control

Feature-based development

Clean commit history

main branch used for production-ready code

Fully deployed to GitHub

🔗 Repository:
https://github.com/basith113/Airbnb-Analytics

📈 Key Learnings & Outcomes

Built a real-world analytics engineering pipeline

Deep understanding of dbt internals

Hands-on Snowflake ingestion patterns

Applied data modeling best practices

Created a strong, interview-ready portfolio project
