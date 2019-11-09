defmodule MyList do
  def ceaser([], _), do: []
  def ceaser([head | tail], n), do: [add(head + n) | ceaser(tail, n)]

  defp add(x) when 0x7A < x, do: x - 0x7A + 0x60
  defp add(x), do: x
end
