# IPL Data Project - SQL Version

This project provides simple steps to analyze IPL cricket data using PostgreSQL and SQL scripts.

---

## 1. Prerequisites

- **PostgreSQL** installed and running on your system.
- IPL CSV data files (see `data/` folder).

---

## 2. Repository

[GitLab Repository Link](git@gitlab.com:mountblue/33.2-python/balaji/ipl_data_project_sql_version.git)

---

## 3. Folder Structure

```
SQL_TASK1/
├── create_db.sql         # Create user and database
├── cleanup_db.sql        # Drop user and database
├── load_csv.sql          # Load CSV data into tables
├── ipl_queries.sql       # IPL analysis queries
├── data/                 # CSV files
└── README.md             # Documentation
```

---

## 4. Setup Instructions

### a. Clone the Repository

```bash
git clone git@gitlab.com:mountblue/33.2-python/balaji/ipl_data_project_sql_version.git
cd ipl_data_project_sql_version/SQL_TASK1
```

### b. Create Database and User

```bash
psql -U postgres -f create_db.sql
```

### c. Load CSV Data

- Place your IPL CSV files in the `data/` folder.
- Update `load_csv.sql` with correct file paths if needed.

```bash
psql -U <db_user> -d <db_name> -f load_csv.sql
```

### d. Run IPL Queries

```bash
psql -U <db_user> -d <db_name> -f ipl_queries.sql
```

### e. Clean Up (Optional)

```bash
psql -U postgres -f cleanup_db.sql
```

---

## 5. Notes

- Replace `<db_user>` and `<db_name>` with the actual user and database names.
- If you face permission issues loading CSVs, ensure PostgreSQL has access to the data directory.
- All scripts are in the `SQL_TASK1` folder.

---

## 6. Contact

For help, contact your mentor or project admin.

