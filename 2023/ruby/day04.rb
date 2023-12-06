def total_points_part1(scratchcards)
    sum = 0
    scratchcards.each_line do |card_str|
        points = 0
        winning_numbers = card_str.split(":").last.split("|").first.split
        my_numbers = card_str.split(":").last.split("|").last.split
        my_numbers.each do |num|
            if winning_numbers.include?(num)
                points = ((points == 0) ? 1 : points * 2)
            end
        end
        sum += points
    end
    sum
end

def total_scratchcards_part2(scratchcards)
    main_arr = scratchcards.split("\n")
    lookup_hash = {}
    main_arr.each do |card_str|
        card_number = card_str.split(":").first.split.last.to_i
        lookup_hash[card_number] = card_str
    end

    copy_scratchcards(lookup_hash, main_arr)
end

def copy_scratchcards(lookup_hash, card_arr, count=0)
    return count if card_arr.empty?

    copies = []

    card_arr.each_with_index do |card_str, index|
        card_number = card_str.split(":").first.split.last.to_i
        match_count = match_winning_numbers(card_str)
        if match_count > 0
            for i in (1..match_count) do
                copies << lookup_hash[card_number+i]
            end
        end
    end

    count += card_arr.size
    copy_scratchcards(lookup_hash, copies, count)
end

def match_winning_numbers(card_str)
    winning_numbers = card_str.split(":").last.split("|").first.split
    my_numbers = card_str.split(":").last.split("|").last.split
    my_numbers.find_all { |n| winning_numbers.include?(n) }.count
end