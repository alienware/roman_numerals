defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  @arabic_tests [
    {0, ""},
    {-1, ""},
    {1, "I"},
    {2, "II"},
    {3, "III"},
    {4, "IV"},
    {5, "V"},
    {6, "VI"},
    {7, "VII"},
    {8, "VIII"},
    {9, "IX"},
    {10, "X"},
    {11, "XI"},
    {12, "XII"},
    {13, "XIII"},
    {14, "XIV"},
    {15, "XV"},
    {16, "XVI"},
    {17, "XVII"},
    {18, "XVIII"},
    {19, "XIX"},
    {20, "XX"},
    {21, "XXI"},
    {22, "XXII"},
    {23, "XXIII"},
    {24, "XXIV"},
    {25, "XXV"},
    {26, "XXVI"},
    {27, "XXVII"},
    {28, "XXVIII"},
    {29, "XXIX"},
    {30, "XXX"},
    {40, "XL"},
    {49, "XLIX"},
    {50, "L"},
    {88, "LXXXVIII"},
    {89, "LXXXIX"},
    {90, "XC"},
    {99, "XCIX"},
    {100, "C"},
  ]

  Enum.each @arabic_tests, fn({arabic, roman}) ->
    test "convert #{arabic} into #{roman}" do
      assert unquote(roman) == RomanNumerals.convert(unquote(arabic))
    end
  end
end
