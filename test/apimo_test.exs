defmodule ApimoTest do
  use ExUnit.Case
  doctest Apimo

  test "greets the world" do
    {:ok, res} = Apimo.fetch_agencies()
    assert res.body != nil
  end
end
