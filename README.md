## Running in development mode

Dependencies:
- Ruby 3.2.2
- PostgreSQL
- Node.js

Fill credentials in `.env` file as
```
DICTIONARY_DEV_DATABASE_USERNAME=your_postgres_username
DICTIONARY_DEV_DATABASE_PASSWORD=your_postgres_password
```

Install dependencies:
```bash
bundle install
npm install
```
Run the frontend dev build:

```bash
foreman start -f Procfile.dev
```

Run the web server from IDE or from terminal with
```bash
rails s
```