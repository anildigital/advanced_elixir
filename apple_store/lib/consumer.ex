defmodule Consumer do
  use GenStage

  def init(:ok) do
    {:consumer, :the_state_does_not_matter}
  end

  def handle_events(events, _from, state) do
    :timer.sleep(1000)

    IO.inspect(events)
    {:noreply, [], state}
  end
end
