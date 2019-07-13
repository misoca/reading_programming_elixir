defmodule MyList do
  def span(from, to) when not is_integer(from) or not is_integer(to), do: raise "Have to be integer"
  def span(from, to) when from == to, do: [from]
  def span(from, to) when from < to, do: [from | span(from + 1, to)]
  def span(from, to) when from > to, do: [from | span(from - 1, to)]
end
