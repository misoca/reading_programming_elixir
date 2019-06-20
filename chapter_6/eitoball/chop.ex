defmodule Chop do
  def guess(actual, first..last) do
    n = div(first + last, 2)
    if n == actual do
      IO.puts("Is it #{first}")
    else
      if n < actual do
        guess(actual, n..last)
      else
        guess(actual, first..n)
      end
    end
  end
end
