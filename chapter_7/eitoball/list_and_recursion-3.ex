defmodule MyList do
  def caesar([], _), do: []
  def caesar([h|t], n) when h + n > ?z, do: [h + n - ?z + ?a| caesar(t, n)]
  def caesar([h|t], n), do: [(h + n) | caesar(t, n)]
end
