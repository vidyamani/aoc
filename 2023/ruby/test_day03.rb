require 'test/unit'
require_relative 'day03'

class TestDay03 < Test::Unit::TestCase

    def test_sum_of_parts_in_engine_part1_example
        schematic = <<-AOC
467..114..
...*......
..35..633.
......#...
617*......
.....+.58.
..592.....
......755.
...$.*....
.664.598..
AOC

        assert_equal 4361, sum_of_parts_in_engine_part1(schematic)
    end

    def test_sum_of_parts_in_engine_part1_input
        schematic = File.read("input_day03.txt")
        assert_equal 532428, sum_of_parts_in_engine_part1(schematic)        
    end

    def test_parse_schematic
        schematic = <<-AOC
467..114..
...*......
..35..633.
......#...
617*......
.....+.58.
..592.....
......755.
...$.*....
.664.598..
AOC

        expected = [["4", "6", "7", ".", ".", "1", "1", "4", ".", "."],[".", ".", ".", "*", ".", ".", ".", ".", ".", "."],[".", ".", "3", "5", ".", ".", "6", "3", "3", "."],[".", ".", ".", ".", ".", ".", "#", ".", ".", "."],["6", "1", "7", "*", ".", ".", ".", ".", ".", "."],[".", ".", ".", ".", ".", "+", ".", "5", "8", "."],[".", ".", "5", "9", "2", ".", ".", ".", ".", "."],[".", ".", ".", ".", ".", ".", "7", "5", "5", "."],[".", ".", ".", "$", ".", "*", ".", ".", ".", "."],[".", "6", "6", "4", ".", "5", "9", "8", ".", "."]]

        assert_equal expected, parse_schematic(schematic)
    end
end