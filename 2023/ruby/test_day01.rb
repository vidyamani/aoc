require 'test/unit'
require_relative 'day01'

class TestDay01 < Test::Unit::TestCase
    def test_example_part1
        values = <<-AOC
1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet
AOC
        assert_equal 142, sum_of_calibration_values_part1(values)
    end

    def test_input_value_simple
        values = File.read("input_day01.txt")
        assert_equal 54953, sum_of_calibration_values_part1(values)
    end

    def test_example_part2
        values = <<-AOC
two1nine
eightwothree
abcone2threexyz
xtwone3four
4nineeightseven2
zoneight234
7pqrstsixteen
AOC
        assert_equal 281, sum_of_calibration_values_part2(values)
    end

    def test_input_value_part2
        values = File.read("input_day01.txt")
        assert_equal 53868, sum_of_calibration_values_part2(values)
    end

    def test_find_numbers
        str, numbers = find_numbers("eightwothree")
        assert_equal ["8", "2", "3"], numbers
    end

end