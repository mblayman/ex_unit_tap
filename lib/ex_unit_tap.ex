defmodule ExUnitTap do
  use GenEvent

  def handle_event({:suite_started, _opts}, config) do
    IO.puts :suite_started
    {:ok, config}
  end

  def handle_event({:suite_finished, _run_us, _load_us}, _config) do
    IO.puts :suite_finished
    :remove_handler
  end

  def handle_event({:case_started, _test_case}, config) do
    IO.puts :case_started
    {:ok, config}
  end

  def handle_event({:case_finished, _test_case}, config) do
    IO.puts :case_finished
    {:ok, config}
  end

  def handle_event({:test_started, _test_case}, config) do
    IO.puts :test_started
    {:ok, config}
  end

  def handle_event({:test_finished, _test_case}, config) do
    IO.puts :test_finished
    {:ok, config}
  end
end
