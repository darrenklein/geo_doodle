# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :geo_doodle,
  ecto_repos: [GeoDoodle.Repo]

# Configures the endpoint
config :geo_doodle, GeoDoodleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2UBHLKYr2hKbechoczty8MY7gyeGvkZa1KPJWZR/74d1DMcmL5aQ7Ckd5I30yv05",
  render_errors: [view: GeoDoodleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GeoDoodle.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :std_json_io,
  pool_size: 10,
  pool_max_overflow: 10,
  script: "assets/node_modules/.bin/react-stdio"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
