# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :grades,
  ecto_repos: [Grades.Repo]

# Configures the endpoint
config :grades, Grades.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OwAlOE1rRnnTuYmthd3qykK3Ay5555jl+2IakPc5FAJY3h0OJLZ6QHa+3SNALKZm",
  render_errors: [view: Grades.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Grades.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
