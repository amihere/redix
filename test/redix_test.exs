defmodule RedixTest do
  use ExUnit.Case
  doctest Redix

  test "greets the world" do
    assert Redix.hello() == :world
  end
end
