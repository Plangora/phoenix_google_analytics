# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :analytics,
  ecto_repos: [Analytics.Repo],
  env: Mix.env(),
  ga_id: System.get_env("GA_ID", "123")

# Configures the endpoint
config :analytics, AnalyticsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "StdWPqTTJ9Uswlisfd85bjfLp6jpI049JFrty56eFBL7iy31XTMo1loltYYhBGXW",
  render_errors: [view: AnalyticsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Analytics.PubSub,
  live_view: [signing_salt: "nti5SZyA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
