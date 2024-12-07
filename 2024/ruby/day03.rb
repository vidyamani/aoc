def mul(instructions)
  total = 0

  instructions.split("\n").each do |str|
    str.scan(/mul\((\d{1,3}\,\d{1,3})\)/).flatten.compact.each do |match|
      total += match.split(",").map(&:to_i).inject(:*)
    end
  end

  total
end

def mul_complex(instructions)
  total = 0

  disable = false
  instructions.split("\n").each do |str|
    str.scan(/mul\((\d{1,3}\,\d{1,3})\)|(don\'t\(\))|(do\(\))/).flatten.compact.each do |match|
      if match == "don't()"
        disable = true
      elsif match == "do()"
        disable = false
      end
      next if match == "don't" || match == "do" || disable
      total += match.split(",").map(&:to_i).inject(:*) unless disable
    end
  end

  total
end
