defmodule RomanNumerals do
  @moduledoc """
  Provides convert method to take an Arabic numeral and convert in to a
  Roman numeral
  """

  def convert(arabic) when arabic < 1 do
    ""
  end

  def convert(arabic) when arabic == 1 do
    "I"
  end

  def convert(arabic) when arabic == 5 do
    "V"
  end

  def convert(arabic) when arabic == 10 do
    "X"
  end

  def convert(arabic) when rem(arabic, 10) == 0  do
    convert(10) <> convert(arabic - 10)
  end

  def convert(arabic) when rem(arabic, 5) == 0 do
    convert(arabic - 5) <> convert(5)
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
    convert(arabic-1) <> convert(1)
  end
end
