defmodule CustomList do
  def sum(list) do
    List.foldl(list, 0, fn (x, acc) -> x + acc end)
  end
end
# CustomList.sum [1,2,3,4,5,6,7,8,9,10]
