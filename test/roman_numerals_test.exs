defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "convert 0 into  \"\"" do
    assert RomanNumerals.convert(0) == ""
  end

  test "convert -1 into \"\""do
    assert RomanNumerals.convert(-1) == ""
  end

  test "convert 1 into \"I\"" do
    assert RomanNumerals.convert(1) == "I"
  end

  test "convert 2 into \"II\"" do
    assert RomanNumerals.convert(2) == "II"
  end

  test "convert 3 into \"III\"" do
    assert RomanNumerals.convert(3) == "III"
  end

  test "convert 4 into \"IV\"" do
    assert RomanNumerals.convert(4) == "IV"
  end

  test "convert 5 into \"V\"" do
    assert RomanNumerals.convert(5) == "V"
  end

  test "convert 6 into \"VI\"" do
    assert RomanNumerals.convert(6) == "VI"
  end

  test "convert 7 into \"VII\"" do
    assert RomanNumerals.convert(7) == "VII"
  end

  test "convert 8 into \"VIII\"" do
    assert RomanNumerals.convert(8) == "VIII"
  end

  test "convert 9 into \"IX\"" do
    assert RomanNumerals.convert(9) == "IX"
  end

  test "convert 10 into \"X\"" do
    assert RomanNumerals.convert(10) == "X"
  end

  test "convert 11 into \"XI\"" do
    assert RomanNumerals.convert(11) == "XI"
  end

  test "convert 12 into \"XII\"" do
    assert RomanNumerals.convert(12) == "XII"
  end

  test "convert 13 into \"XIII\"" do
    assert RomanNumerals.convert(13) == "XIII"
  end

  test "convert 14 into \"XIV\"" do
    assert RomanNumerals.convert(14) == "XIV"
  end

  test "convert 15 into \"XV\"" do
    assert RomanNumerals.convert(15) == "XV"
  end

  test "convert 16 into \"XVI\"" do
    assert RomanNumerals.convert(16) == "XVI"
  end

  test "convert 17 into \"XVII\"" do
    assert RomanNumerals.convert(17) == "XVII"
  end

  test "convert 18 into \"XVIII\"" do
    assert RomanNumerals.convert(18) == "XVIII"
  end

  test "convert 19 into \"XIX\"" do
    assert RomanNumerals.convert(19) == "XIX"
  end

  test "convert 20 into \"XX\"" do
    assert RomanNumerals.convert(20) == "XX"
  end

  test "convert 21 into \"XXI\"" do
    assert RomanNumerals.convert(21) == "XXI"
  end

  test "convert 22 into \"XXII\"" do
    assert RomanNumerals.convert(22) == "XXII"
  end

  test "convert 23 into \"XXIII\"" do
    assert RomanNumerals.convert(23) == "XXIII"
  end

  test "convert 24 into \"XXIV\"" do
    assert RomanNumerals.convert(24) == "XXIV"
  end

  test "convert 25 into \"XXV\"" do
    assert RomanNumerals.convert(25) == "XXV"
  end

  test "convert 26 into \"XXVI\"" do
    assert RomanNumerals.convert(26) == "XXVI"
  end

  test "convert 27 into \"XXVII\"" do
    assert RomanNumerals.convert(27) == "XXVII"
  end

  test "convert 28 into \"XXVIII\"" do
    assert RomanNumerals.convert(28) == "XXVIII"
  end

  test "convert 29 into \"XXIX\"" do
    assert RomanNumerals.convert(29) == "XXIX"
  end

  test "convert 30 into \"XXX\"" do
    assert RomanNumerals.convert(30) == "XXX"
  end
end
