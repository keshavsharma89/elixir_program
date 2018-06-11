defmodule Common do
  def string(s, r) do
    if s=="" || r=="" do
      "Error: Invalid input, none of the string must not be empty"
    else
      logic(s, r, "") |> sortstring("")
    end
  end

  defp logic("", _, result), do: result
  defp logic(s, r, result) do
    if match(String.first(s), r) do
      String.slice(s, 1, String.length(s)-1) |>
      logic(r, result <> String.first(s))
    else
      String.slice(s, 1, String.length(s)-1) |>
      logic(r, result)
    end
  end

  defp match(_, ""), do: false
  defp match(s, r) do
    if s == String.slice(r, 0, 1) do
      true
    else
      match(s, String.slice(r, 1, String.length(r)-1))
    end
  end

  defp sortstring("", output), do: output
  defp sortstring(s, output) do
    d=smallest(String.slice(s, 1, String.length(s)-1), String.first(s))
    newoutput= output<>d
    news=removedigit(s, d, "")
    sortstring(news, newoutput)
  end

  defp removedigit(s, d, result) do
    if d == String.first(s) do
      result<>String.slice(s, 1, String.length(s)-1)
    else
      removedigit(String.slice(s, 1, String.length(s)-1), d, result<>String.first(s))
    end
  end

  defp smallest("", r), do: r
  defp smallest(s, r) do
    if r <= String.first(s) do
      smallest(String.slice(s, 1, String.length(s)-1), r)
    else
      smallest(String.slice(s, 1, String.length(s)-1), String.first(s))
    end
  end
end

# For testing please run:
# Common.string "zcahhi", "abzc"
# Output: "acz"
