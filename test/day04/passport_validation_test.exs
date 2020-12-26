defmodule PassportValidationTest do
  use ExUnit.Case

  test "small case required fields" do
    passports = FileReader.read_lines("test/day04/smallCase.txt", "\n\n")
    assert 2 == PassportValidation.num_valid_passports(passports)
  end

  test "puzzle input required fields" do
    passports = FileReader.read_lines("test/day04/puzzleInput.txt", "\n\n")
    assert 242 == PassportValidation.num_valid_passports(passports)
  end

  # test "small case field validation" do
  #   passports = FileReader.read_lines("test/day04/smallCase.txt", "\n\n")
  #   assert 2 == PassportValidation.num_valid_passports(passports)
  # end

  # test "puzzle input field validation" do
  #   passports = FileReader.read_lines("test/day04/smallCase.txt", "\n\n")
  #   assert 242 == PassportValidation.num_valid_passports(passports)
  # end
end
