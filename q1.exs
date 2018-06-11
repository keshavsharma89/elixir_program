defmodule Samplestring  do
  def mingled(a, b) do
    if String.length(a)==String.length(b) do
      mixit(a, b, "")
    else
      "Error: Length of both the Strings should be same!!"
    end
  end

  defp mixit("", _, final) ,do: final
  defp mixit(s1, s2, final) do
    final <> mixit( String.slice(s1, 1, String.length(s1)-1 ), String.slice(s2, 1, String.length(s2)-1 ) ,   String.first(s1) <> String.first(s2) )
  end
end

# For testing please run:
# Samplestring.mingled "abcd", "1234"
# Output: "a1b2c3d4"
