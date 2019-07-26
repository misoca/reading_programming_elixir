defmodule Chop do
  def guess(actual, range) do
    (min..max) = range
    center = div(max + min, 2)
    IO.puts "Is it #{center}"
    find(actual, range, center)
  end

  def find(actual, _, n) when actual == n do
    n
  end

  def find(actual, range, n) when actual < n do
    (min.._) = range
    guess(actual, min..n-1)
  end

  def find(actual, range, n) when actual > n do
    (_..max) = range
    guess(actual, n+1..max)
  end
end

Chop.guess(273, 1..1000)
