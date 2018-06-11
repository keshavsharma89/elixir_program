defmodule Fibonacci do
  def create(_, _, 0) ,do: []
  def create(a, b, limit) do
      [ a ]++ create(b, a+b, limit-1)
  end
end


#Fibonacci.create 0, 1, 100
