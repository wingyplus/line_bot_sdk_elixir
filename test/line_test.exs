defmodule LINETest do
  use ExUnit.Case
  doctest LINE

  test "greets the world" do
    assert LINE.hello() == :world
  end
end
