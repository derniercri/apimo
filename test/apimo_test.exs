defmodule ApimoTest do
  use ExUnit.Case
  doctest Apimo

  test "greets the world" do
    {:ok, res} = Apimo.fetch_agencies()
    assert res.body != nil
  end

  test "merge options" do
    [hackney: [basic_auth: _], opt1: 4] = Apimo.process_request_options(opt1: 4)
  end
end
