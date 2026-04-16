# servnotes

Backend service for processing API requests with notes. Built on Ruby on Rails with PostgreSQL for persistence.

## Requirements

- Ruby `3.3.0`
- PostgreSQL

## Getting Started

### 1. Install dependencies

```bash
bundle install
```

### 2. Run migrations

```bash
rails db:migrate
```

> Creates the `my_project_name_development` database in PostgreSQL along with a `notes` table.

### 3. Start the server

```bash
rails s -p 3000
```

> Puma listens on `http://localhost:3000` by default.
