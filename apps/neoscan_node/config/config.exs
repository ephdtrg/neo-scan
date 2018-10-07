use Mix.Config

if Mix.env() == :test do
  config :neoscan_node,
    notification_seeds: [
      "http://127.0.0.1:4020/v1"
    ]
else
  config :neoscan_node,
    notification_seeds: [
      "http://127.0.0.1:4020/v1"
    ]
end

config :neoscan_node,
  node_list_url:
    "https://raw.githubusercontent.com/MyWishPlatform/neo-mon/mywish-testnet/docs/assets/testnet.json"

config :neoscan_node,
  seeds: [
    "http://127.0.0.1:30330",
    "http://127.0.0.1:30332",
    "http://127.0.0.1:30333",
    "http://127.0.0.1:30334",
    "http://127.0.0.1:30335",
    "http://127.0.0.1:30337"
  ]

if Mix.env() == :test do
  config :neoscan_node,
    seeds: [
      "http://127.0.0.1:30330",
      "http://127.0.0.1:30332",
      "http://127.0.0.1:30333",
      "http://127.0.0.1:30334",
      "http://127.0.0.1:30335",
      "http://127.0.0.1:30337"
    ]
end
