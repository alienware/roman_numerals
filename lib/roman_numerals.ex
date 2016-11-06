defmodule RomanNumerals do
  @moduledoc """
  Provides convert method to take an Arabic numeral and convert in to a
  Roman numeral
  """

  @arabic_bases [1, 5, 10, 50, 100]
  @arabic_romans [
    {1, "I"},
    {5, "V"},
    {10, "X"},
    {50, "L"},
    {100, "C"},
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

  def convert(arabic) when rem(arabic, 50) == 40 do
    convert(10) <> convert(arabic + 10)
  end

  def convert(arabic) when arabic > 10 do
    unit_remainder = rem(arabic, 10)
    times_50 = div(arabic, 50)
    times_10 = div(arabic - 50 * times_50, 10)
    String.duplicate(convert(50), times_50) <> String.duplicate(convert(10), times_10) <> convert(unit_remainder)
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
