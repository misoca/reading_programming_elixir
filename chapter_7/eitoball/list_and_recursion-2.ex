defmodule MyList do
  def max([h | []]), do: h
  def max([h1, h2 | t]) when h1 > h2, do: max([h1 | t])
  def max([_, h2 | t]), do: max([h2 | t])
end
