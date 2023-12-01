def sum_of_calibration_values_part1(values)
    sum = 0
    values.split.each do |str|
        first = str.scan(/\d/).first
        last = str.scan(/\d/).last
        sum = sum + (first + last).to_i
    end
    sum
end

def sum_of_calibration_values_part2(values)
    sum = 0
    values.split.each do |str|
        _, numbers = find_numbers(str)
        sum = sum + (numbers.first + numbers.last).to_i
    end
    sum
end

def find_numbers(str, numbers=[])
    pattern = /\d|one|two|three|four|five|six|seven|eight|nine/
    next_index = str.index(pattern)

    return str, numbers unless next_index

    next_match = number_value(str.match(pattern).to_s)
    numbers << next_match
    find_numbers(str[next_index+1, str.length], numbers)
end

def number_value(str)
    numbers = {
        "one" => "1",
        "two" => "2",
        "three" => "3",
        "four" => "4",
        "five" => "5",
        "six" => "6",
        "seven" => "7",
        "eight" => "8",
        "nine" => "9"
    }
    numbers[str] || str
end