defmodule ExUnitTap do
  use GenEvent

  def handle_event({:suite_started, _opts}, config) do
    IO.puts "TAP version 13"
    {:ok, config}
  end

  # TODO: count the tests and print out the plan line.
  def handle_event({:suite_finished, _run_us, _load_us}, _config) do
    :remove_handler
  end

  # TODO: pattern match on the different error states.
  def handle_event({:test_finished, test}, config) do
    IO.puts "#{test.case} #{test.name}"
    {:ok, config}
  end

  # Catch all the other events.
  # TODO: Is there a way to do this without swallowing erroneous clauses?
  def handle_event(_, config) do
    {:ok, config}
  end
end
