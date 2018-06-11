defmodule Lists do
  def rotatelist(lst, rotateAt) do
    arr=Enum.split(lst, rotateAt)
    elem(arr, 1)++elem(arr, 0)
  end
end
