defmodule MyeventsTest do
  use ExUnit.Case
  doctest Myevents

  test "greets the world" do
    assert Myevents.hello() == :world
  end
end
