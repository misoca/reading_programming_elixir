defmodule MyList do
  def sum(list), do: _sum(list)
  defp _sum([]), do: 0
  defp _sum([h|t]), do: h + _sum(t)
end
