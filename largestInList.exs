defmodule CustomList do
  def largest(clist) do
    List.last(Enum.sort(clist))
  end
end
# CustomList.largest [1,2,4,3,5]
