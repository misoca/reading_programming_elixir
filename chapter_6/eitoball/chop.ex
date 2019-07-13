defmodule Chop do
  def guess(actual, first..last) do
    guessed = div(first + last, 2)
    IO.puts("Is it #{guessed}")
    do_guess(actual, guessed, first, last)
  end

  defp do_guess(actual, guessed, _, _) when actual == guessed,
    do: guessed
  defp do_guess(actual, guessed, first, _) when actual < guessed,
    do: guess(actual, first..guessed)
  defp do_guess(actual, guessed, _, last) when actual > guessed,
    do: guess(actual, guessed..last)
end
