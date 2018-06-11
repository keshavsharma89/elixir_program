defmodule Armstrong do
  def num(n) do
    if n==anum(n) do
      "#{n} is an Armstrong number"
    else
      "#{n} is not an Armstrong number"
    end
  end
  defp anum(n) do
    lst=Integer.digits(n)
    lst |> List.foldl( 0, fn(x, acc) -> :math.pow(x, length(lst) ) + acc end)
  end
end
