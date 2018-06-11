defmodule Find do
  def repeat(a, k) do
    output(a, k, "")
  end

  defp output([], _, result) when result=="", do: "-1"
  defp output([], _, result), do: result
  defp output(a, k, result) do
    if occurrence(List.first(a), a, 0) >= k do
      Enum.filter(a, fn(x) -> x != List.first(a) end) |>
      output(k, result<>Integer.to_string(List.first(a))<>" ")
    else
      Enum.filter(a, fn(x) -> x != List.first(a) end) |>
      output(k, result)
    end
  end

  defp occurrence(_, [], times), do: times
  defp occurrence(i, [head| tail], times) when head == i, do: occurrence(i, tail, times+1)
  defp occurrence(i, [head| tail], times) when head != i, do: occurrence(i, tail, times)
end

# For testing please run:
# Find.repeat [4,5,2,4,5,3,1,3,4], 2
# Output: "4 5 3 "
