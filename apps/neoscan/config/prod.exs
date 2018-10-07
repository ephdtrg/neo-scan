use Mix.Config

config :neoscan, Neoscan.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "neoscan_dev",
  hostname: "localhost",
  timeout: 60_000

# import_config "prod.secret.exs"
