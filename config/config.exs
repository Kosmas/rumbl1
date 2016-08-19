# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rumbl1,
  ecto_repos: [Rumbl1.Repo]

# Configures the endpoint
config :rumbl1, Rumbl1.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RvZAy2H9ypjX/Goncl9iJzAj8hqCr4BKe6kGJbrBc9qoI+mC7ks9jjQLBycYCiT2",
  render_errors: [view: Rumbl1.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rumbl1.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
