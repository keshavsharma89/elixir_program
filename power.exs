defmodule CustomMath do
  def power(x, 1), do: x
  def power(x, y) do
   logic(x, x,y)
  end

  defp logic(result, _, 1), do: result
  defp logic(result, x, y) do
    multi(result, x) |> logic(x, y-1)
  end

  defp multi(x, 1), do: x
  defp multi(x, y) do
    x + multi(x, y-1)
  end
end
# CustomMath.power 5, 2
