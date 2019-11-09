defmodule MyList do
  def max(list), do: _max(list, 0)

  defp _max([], max_value), do: max_value
  defp _max([head | tail], max_value) when head <= max_value do
    _max(tail, max_value)
  end
  defp _max([head | tail], max_value) when max_value < head do
    _max(tail, head)
  end
end

