def sum_of_parts_in_engine_part1(schematic_str)
    sum = 0
    schematic_arr = parse_schematic(schematic_str)
    part_number = ""
    is_part_number = false
    schematic_arr.each_with_index do |row, row_index|
        row.each_with_index do |char, char_index|
            if is_a_number?(char)
                part_number << char
                is_part_number = is_part_number || is_part_number?(schematic_arr, row_index, char_index)
            else
                if is_part_number
                    sum += part_number.to_i
                end
                is_part_number = false
                part_number = ""
            end
        end
    end
    sum
end

def parse_schematic(schematic_str)
    schematic_arr = []
    schematic_str.each_line do |schematic_row|
        schematic_arr << schematic_row.chomp.chars
    end
    schematic_arr
end

def is_a_number?(char)
    char.to_i.to_s == char
end

def is_part_number?(arr, row, col)
    possible_cells = [[row-1, col-1],
     [row-1, col],
     [row-1, col+1],
     [row, col-1],
     [row, col+1],
     [row+1, col-1],
     [row+1, col],
     [row+1, col+1]]
    
    x = possible_cells.any? do |r, c|
        next if r < 0 || c < 0 || r >= arr.length || c >= arr[0].length
        arr[r][c].match?(/\*|\+|\$|\#|@|\%|\/|\-|\=|\&/)
    end
end