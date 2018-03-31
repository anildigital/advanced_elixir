defmodule AppleStoreTest do
  use ExUnit.Case
  doctest AppleStore

  test "greets the world" do
    assert AppleStore.hello() == :world
  end
end
