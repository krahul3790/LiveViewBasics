# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :first_app,
  ecto_repos: [FirstApp.Repo]

# Configures the endpoint
config :first_app, FirstAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YAGQ1/YeGO3h2780I3US3R0vZ5mlCKpQWPASXlKREuypI9U7W7GbBYr8F/129W1T",
  render_errors: [view: FirstAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FirstApp.PubSub,
  live_view: [signing_salt: "02/e7Nm3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
