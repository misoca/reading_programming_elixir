defmodule Chop do
  def guess(actual, (min..max) = range) do
    center = div(max + min, 2)
    IO.puts "Is it #{center}"
    find(actual, range, center)
  end

  def find(actual, _, n) when actual == n do
    n
  end

  def find(actual, (min.._), n) when actual < n do
    guess(actual, min..n-1)
  end

  def find(actual, (_..max), n) when actual > n do
    guess(actual, n+1..max)
  end
end
