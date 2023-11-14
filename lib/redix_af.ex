defmodule RedixAF do
  import Redix

  @moduledoc """
  Documentation for `RedixAF`.
  """

  @doc """
  Hello world.

  ## Examples

  iex> RedixAF.hello()
  :world

  """
  def hello do
    :world
  end

  def connect_redis do
    {:ok, conn} = Redix.start_link("redis://localhost:6379/3", name: :redix)
    Redix.command(conn, ["SET", "ready", "3391"])
    Redix.stop(conn)
  end
end
