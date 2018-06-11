defmodule Find do
  def superdigit(a) when a < 10, do: a
  def superdigit(a) do
    Integer.digits(a) |>
    List.foldl( 0, fn(x, acc) -> x + acc end) |>
    superdigit
  end
end

# For testing please run:
# Find.superdigit 9875
# Output: 2
