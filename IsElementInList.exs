defmodule CustomList do
  def find([], _), do: false
  def find([head| tail], ele) when head==ele, do: true
  def find([head| tail], ele) when head!=ele, do: find(tail, ele)
end
# CustomList.find [4,2,3,1,5], 4
