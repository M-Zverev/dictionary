## What is our project about?

Our project is a dictionary site based on Ruby on Rails. It will allow user to watch automatically generated cards or create his own cards to help him learn foreign languages (English, for starters). After that, user would be able to complete a test to check whether they learned new words or not. Registration to site would be mandatory. User's best score would be saved to database.

P.s. description above may change in the future.

## Developers

Михаил Зверев, Гаджиахмед Рамазанов, Егор Ивлев, Артём Григоренко, Айс Польшинов (все ФИИТ 3-10)

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