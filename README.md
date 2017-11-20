# GeoDoodle
This is a tool for drawing and exporting custom GeoJSON datasets.

## Installation and Startup
  * Install Elixir dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install NodeJS dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

The app will run on [`localhost:4000`](http://localhost:4000)

## Linting
This app's React frontend (`assets/`) has been set up to lint with ESLint - a `mix` alias has been set up to run the linter from the top-level directory.

    mix lint

## Notes
This app was scaffolded with React/Phoenix application starter kit - [`https://github.com/reph-stack/reph`](https://github.com/reph-stack/reph)