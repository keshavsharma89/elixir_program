defmodule Lists do
  def toFrame(sl) do
    IO.inspect("******")
    Enum.map(sl, fn(x) -> IO.inspect("* #{x} *") end)
    "******"
  end
end
