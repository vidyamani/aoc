require 'test/unit'
require_relative 'day01'

class TestDay01 < Test::Unit::TestCase

  def test_distance_part1_example
      locations = <<-AOC
3   4
4   3
2   5
1   3
3   9
3   3
AOC

      assert_equal 11, total_distance(locations)
  end

  def test_distance_part1
    locations = File.read("input_day01.txt")

    assert_equal 2031679, total_distance(locations)
  end

  def test_similarity_score_part2_example
    locations = <<-AOC
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    AOC
        
    assert_equal 31, similarity_score(locations)
  end

  def test_similarity_score_part2
    locations = File.read("input_day01.txt")
        
    assert_equal 19678534, similarity_score(locations)
  end

end
