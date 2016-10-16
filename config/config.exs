# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :int_300,
  ecto_repos: [Int300.Repo]

# Configures the endpoint
config :int_300, Int300.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yF3HOSv51ZefkoQBUDw56ALiFgKiO6ZMajzZTmwx30sk2EMKcoHOayxImvIpCL+0",
  render_errors: [view: Int300.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Int300.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
