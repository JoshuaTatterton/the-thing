use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :the_thing, TheThingWeb.Endpoint,
  secret_key_base: "PmG4PZOX1h6HnV3criFFh4nHN5hj0EG3cjn8MLBZpGPBbmWjj7dA31Rin1a+GCXQ"

# Configure your database
config :the_thing, TheThing.Repo,
  adapter: Ecto.Adapters.Postgres,
#  username: "postgres",
#  password: "postgres",
#  database: "the_thing_prod",
  pool_size: 15
