defmodule TestString do
  def encode(s) do
    convert(s, "")
  end

  defp convert("", r) ,do: r
  defp convert(s, r) do
    news=String.slice(s, 1, (String.length(s)-1))
    if String.first(s)==String.last(r) do
      counter=Integer.to_string( String.to_integer( String.slice(r, -2, 1) )  + 1 )
      convert(news, ( String.slice(r, 0, (String.length(r)-2)) )<>counter<>String.first(s))
    else
      convert(news, r<>"1"<>String.first(s))
    end
  end
end
