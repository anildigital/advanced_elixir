defmodule Compute do
  def process_events(events) do
    Enum.map(events, fn (n) -> n * 100 end)
  end
end