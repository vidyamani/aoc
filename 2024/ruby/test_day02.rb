require 'test/unit'
require_relative 'day02'

class TestDay02 < Test::Unit::TestCase

  def test_safe_report_count_part1_example
      levels = <<-AOC
7 6 4 2 1
1 2 7 8 9
9 7 6 2 1
1 3 2 4 5
8 6 4 4 1
1 3 6 7 9
AOC

      assert_equal 2, safe_report_count(levels)
  end

  def test_distance_part1
    levels = File.read("input_day02.txt")

    assert_equal 359, safe_report_count(levels)
  end

  def test_safe_report_count_part2_example
    levels = <<-AOC
7 6 4 2 1
1 2 7 8 9
9 7 6 2 1
1 3 2 4 5
8 6 4 4 1
1 3 6 7 9
AOC

    assert_equal 4, safe_report_count_with_dampener(levels)
  end

  def test_safe_report_count_part2
    levels = File.read("input_day02.txt")

    assert_equal 418, safe_report_count_with_dampener(levels)
  end
end
