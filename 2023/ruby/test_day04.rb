require 'test/unit'
require_relative 'day04'

class TestDay03 < Test::Unit::TestCase

    def test_total_points_part1_example
        scratchcards = <<-AOC
Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53
Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19
Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1
Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83
Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36
Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11
AOC

        assert_equal 13, total_points_part1(scratchcards)
    end

    def test_total_points_part1_input
        scratchcards = File.read("input_day04.txt")
        assert_equal 32609, total_points_part1(scratchcards)
    end

    def test_total_scratchcards_part2_example
        scratchcards = <<-AOC
Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53
Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19
Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1
Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83
Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36
Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11
AOC

        assert_equal 30, total_scratchcards_part2(scratchcards)
    end

    def test_total_scratchcards_part2_input
        scratchcards = File.read("input_day04.txt")
        assert_equal 14624680, total_scratchcards_part2(scratchcards)
    end

end