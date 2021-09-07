defmodule TodoOrDieTest do
  use ExUnit.Case
  doctest TodoOrDie

  test "after_date! fails to compile after the given date" do
    assert_raise RuntimeError, fn ->
      Code.compile_string("""
        defmodule AfterDateHappyTest do
          require TodoOrDie

          TodoOrDie.after_date!(2000, 1, 1)
        end
      """)
    end
  end
end
