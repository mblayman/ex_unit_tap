# ExUnitTap

An ExUnit formatter that produces [Test Anything Protocol](http://testanything.org/)
(TAP) output.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ex_unit_tap` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ex_unit_tap, "~> 0.1.0"}]
    end
    ```

  2. Ensure `ex_unit_tap` is started before your application:

    ```elixir
    def application do
      [applications: [:ex_unit_tap]]
    end
    ```

