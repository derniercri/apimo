defmodule ApimoTest do
  use ExUnit.Case
  doctest Apimo

  test "greets the world" do
    assert Apimo.fetch_agencies() != nil
  end
end
