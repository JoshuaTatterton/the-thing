defmodule TheThing.Repo do
  use Ecto.Repo, otp_app: :the_thing

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """


  def init(_, config) do
    config = config
      |> Keyword.put(:username, System.get_env("PGUSER"))
      |> Keyword.put(:password, System.get_env("PGPASSWORD"))
      |> Keyword.put(:database, System.get_env("PGDATABASE"))
      |> Keyword.put(:hostname, System.get_env("PGHOST"))
      |> Keyword.put(:port, System.get_env("PGPORT") |> String.to_integer)
    {:ok, config}
  end
  
  # def init(_, opts) do
  #   {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  # end
end
