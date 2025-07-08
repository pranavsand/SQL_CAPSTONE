# 📘 SQL Capstone Project – Social Media Data Model

This repository contains the capstone project developed as part of the **Full Stack Data Science Program at [AlmaBetter](https://www.almabetter.com/)**.

The goal of this project is to design and implement a **relational database schema** for a basic social media platform using **PostgreSQL**. The schema supports features such as user management, posts, likes, comments, followers, and hashtags.

---

## 🚀 Project Overview

- **Objective**: Build a fully functional and normalized SQL database to simulate core operations of a social media platform.
- **Key Entities**:
  - Users
  - Posts
  - Comments
  - Likes
  - Followers
  - Hashtags

---

## 🧩 Entity-Relationship Diagram

The ER diagram below visualizes how entities like Users, Posts, Followers, Likes, and Hashtags are related.

![ER Diagram](./diagrams/er_diagram.png) <!-- Update path if needed -->

---

## ⚙️ How to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/pranavsand/SQL_CAPSTONE.git
   cd SQL_CAPSTONE

2. **Set up PostgreSQL**
   - **Create a database:**
     ```bash
     CREATE DATABASE social_media_db;
3. **Create Tables**
   ```bash
   psql -d social_media_db -f schema/create_tables.sql
4. **Insert Sample Data**
   ```bash
   psql -d social_media_db -f seeds/seed_data.sql
4. **Run Queries**
   ```bash
   psql -d social_media_db -f queries/sample_queries.sql

---

**📊 Sample Use Cases**

**List all followers of a specific user

**Get the top 5 trending hashtags

**Find posts with the highest number of likes

**Retrieve comments on a particular post

**Analyze user engagement (likes + comments)

---

**🛠️ Technologies Used**

-Database: PostgreSQL

-Modeling Tool: dbdiagram.io

-Language: SQL

---
**🛠️ Technologies Used**

-Database: PostgreSQL

-Modeling Tool: dbdiagram.io

-Language: SQL

---
**📈 Learnings & Takeaways**

-Practical experience in database schema design

-Understanding of primary & foreign keys, constraints, and normalization

-Query writing for real-world use cases

-Improved understanding of many-to-many relationships and indexing logic

---
**🙌 Acknowledgements**

This project was completed as part of the Full Stack Data Science Program at AlmaBetter.

Special thanks to the AlmaBetter team and mentors for their guidance and support throughout this learning journey.

---
**📬 Contact**

Pranav Sandgu

📧 LinkedIn

📂 GitHub

---
Find the Word Document at: https://docs.google.com/document/d/1LXNxYoLkyWOzOBlneZBDS0jEkJ4c8KDm/edit?usp=sharing&ouid=114802114045594382425&rtpof=true&sd=true
