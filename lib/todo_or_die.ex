defmodule TodoOrDie do
  @moduledoc """
  Documentation for `TodoOrDie`.
  """

  defmacro after_date!(year, month, day) do
    quote do
      Module.register_attribute(__MODULE__, :todo_checks, accumulate: true)

      Module.put_attribute(
        __MODULE__,
        :todo_checks,
        {:date, DateTime.new!(Date.new!(unquote(year), unquote(month), unquote(day)), ~T[00:00:00])}
      )

      Module.put_attribute(__MODULE__, :before_compile, unquote(__MODULE__))
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      for check <- @todo_checks do
        IO.puts("inspecting a todo check")

        case check do
          {:date, date} ->
            if DateTime.compare(DateTime.utc_now(), date) == :gt, do: raise("It's after #{date}!")
        end
      end
    end
  end
end
