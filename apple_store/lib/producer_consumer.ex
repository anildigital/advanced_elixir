defmodule ProducerConsumer do
  use GenStage

  def init(number) do
    {:producer_consumer, number}
  end

  def handle_events(events, _from, number) do
    # If we receive [0, 1, 2], this will transform
    # it into [0, 1, 2, 1, 2, 3, 2, 3, 4].

    #IO.inspect(number)
    #events =
    #  for event <- events,
    #      entry <- event*number,
    #      do: entry

    events = Enum.map(events, fn (n) -> n * number end)

    {:noreply, events, number}
  end
end
