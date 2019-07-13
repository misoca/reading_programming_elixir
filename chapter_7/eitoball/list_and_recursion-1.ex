defmodule MyList do
  def mapsum([], _), do: 0
  def mapsum([h|t], func), do: func.(h) + mapsum(t, func)
end
