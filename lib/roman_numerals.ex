defmodule RomanNumerals do
  @moduledoc """
  Provides convert method to take an Arabic numeral and convert in to a
  Roman numeral
  """

  @arabic_bases [1, 5, 10, 50, 100, 500, 1000]
  @arabic_romans [
    {1, "I"},
    {5, "V"},
    {10, "X"},
    {50, "L"},
    {100, "C"},
    {500, "D"},
    {1000, "M"},
  ]

  @doc """
  Creates Roman equivalent of given `arabic`

  Returns `String`.

  ## Examples

      iex> RomanNumerals.convert(1786)
      "MDCCLXXXVI"

  """
  def convert(arabic) when arabic < 1 do
    ""
  end

  def convert(arabic) when arabic in @arabic_bases do
    {_, roman_base} = Enum.find(@arabic_romans,
                                fn {arabic_base, _}
                                  -> arabic_base == arabic
                                end)
    roman_base
  end

  def convert(arabic) when rem(arabic, 50) >= 40 do
    case div(arabic, 50) do
      0 ->
        convert(10) <> convert(arabic + 10)
      1 ->
        convert(10) <> convert(100) <> convert(arabic - 90)
    end
  end

  def convert(arabic) when arabic > 10 do
    remainder_unit = rem(arabic, 10)
    {times_1000, remainder_1000} = {div(arabic, 1000), rem(arabic, 1000)}
    {times_500, remainder_500} = {div(remainder_1000, 500), rem(remainder_1000, 500)}
    {times_100, remainder_100} = {div(remainder_500, 100), rem(remainder_500, 100)}
    {times_50, remainder_50} = {div(remainder_100, 50), rem(remainder_100, 50)}
    times_10 = div(remainder_50, 10)
    String.duplicate(convert(1000), times_1000) <> String.duplicate(convert(500), times_500) <> String.duplicate(convert(100), times_100) <> String.duplicate(convert(50), times_50) <> String.duplicate(convert(10), times_10) <> convert(remainder_unit)
  end

  def convert(arabic) when rem(arabic, 5) == 4 do
    case div(arabic, 10) do
       0 ->
        convert(1) <> convert(arabic + 1)
       _ ->
        convert(10) <> convert(arabic - 10)
    end
  end

  def convert(arabic) do
    convert(arabic - 1) <> convert(1)
  end
end
