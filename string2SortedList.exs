defmodule CutomString do
  def createList(str) do
    String.split(str, ",") |>
    Enum.map(fn(x) -> String.to_integer(x) end) |>
    Enum.sort(&(&1 < &2))
  end
end
# CutomString.createList "11,3,55,2,6"
