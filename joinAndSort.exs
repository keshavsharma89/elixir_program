defmodule Lists do
  def joinandsort(l1, l2) do
    l1++l2 |> Enum.sort(&(&1 < &2))
  end
end
