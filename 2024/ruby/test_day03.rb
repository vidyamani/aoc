require 'test/unit'
require_relative 'day03'

class TestDay03 < Test::Unit::TestCase

  def test_mul_part1_example
    instructions = <<-AOC
xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))
AOC

      assert_equal 161, mul(instructions)
  end

  def test_mul_part1
    instructions = File.read("input_day03.txt")

    assert_equal 188192787, mul(instructions)
  end

  def test_mul_part2_example
    instructions = <<-AOC
xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))
AOC

    assert_equal 48, mul_complex(instructions)
  end

  def test_mul_part2
    instructions = File.read("input_day03.txt")

    assert_equal 113965544, mul_complex(instructions)
  end
end
