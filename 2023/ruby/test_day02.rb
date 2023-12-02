require 'test/unit'
require_relative 'day02'

class TestDay02 < Test::Unit::TestCase

    def test_sum_of_games_part1_example
        games = <<-AOC
Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green
AOC
        criteria = {
            :red => 12,
            :green => 13,
            :blue => 14
        }
        assert_equal 8, sum_of_games_part1(games, criteria)
    end

    def test_sum_of_games_part1_input
        games = File.read("input_day02.txt")
        criteria = {
            :red => 12,
            :green => 13,
            :blue => 14
        }
        assert_equal 2679, sum_of_games_part1(games, criteria)
    end

    def test_sum_of_power_of_sets_part2_example
        games = <<-AOC
Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green
AOC

        assert_equal 2286, sum_of_power_of_sets_part2(games)
    end

    def test_sum_of_power_of_sets_part2_input
        games = File.read("input_day02.txt")

        assert_equal 77607, sum_of_power_of_sets_part2(games)
    end

    def test_parse_game
        str = "Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green"
        game = {
            :number => 1,
            :red => 4,
            :green => 2,
            :blue => 6
        }

        assert_equal game, parse_game(str)
    end

end