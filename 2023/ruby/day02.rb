def sum_of_games_part1(games, criteria)
    sum = 0
    games.each_line do |game_str|
        game = parse_game(game_str)
        sum += meets_criteria(game, criteria)
    end
    sum
end

def sum_of_power_of_sets_part2(games)
    sum_of_powers = 0
    games.each_line do |game_str|
        game = parse_game(game_str)
        sum_of_powers += (game[:red] * game[:green] * game[:blue])
    end
    sum_of_powers
end

def meets_criteria(game, criteria)
    if((game[:red] <= criteria[:red]) &&
        (game[:green] <= criteria[:green]) && 
        (game[:blue] <= criteria[:blue]))
        return game[:number]
    end
    0
end

def parse_game(game_str)
    number = game_str.split(":").first.split.last.to_i
    game = {
        :number => number,
        :red => 0,
        :green => 0,
        :blue => 0
    }
    game_str.split(":").last.split(";").each do |cubes|
        cubes.split(",").each do |cube|
            cube.chomp!
            game[cube.split.last.to_sym] = [game[cube.split.last.to_sym], cube.split.first.to_i].max
        end
    end
    game
end