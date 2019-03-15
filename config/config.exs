# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :hello_flickrex, HelloFlickrexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sLxca3JOrwR/BjJh64Wozf45PwqLDD4Rxl9qDMizwEOX2k6Cl7qKMF4QveC5aMU+",
  render_errors: [view: HelloFlickrexWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloFlickrex.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
