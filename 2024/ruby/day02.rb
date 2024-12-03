def safe_report_count(levels)
  safe_reports = 0

  levels.split("\n").each do |str|
    row = str.split(" ").map(&:to_i)
    next unless (row == row.sort || row == row.sort.reverse)

    safe_row = true

    row.each_with_index do |level, index|
      if row[index+1]
        if !(level - row[index+1]).abs.between?(1, 3)
          safe_row = false
        end
      end
    end
    safe_reports += 1 if safe_row
  end

  safe_reports
end

def safe_report_count_with_dampener(levels)
  safe_reports = 0

  levels.split("\n").each do |str|
    row = str.split(" ").map(&:to_i)
    # next unless (row == row.sort || row == row.sort.reverse)

    if safe_row_with_dampener?(row)
      safe_reports += 1
      # p row
    end
  end
  safe_reports
end

def safe_row_with_dampener?(row)
  if safe_row?(row)
    return true
  else
    row.each_index do |index|
      return true if safe_row?(row.dup.tap{|i| i.delete_at(index)})
    end
  end
  false
end

def safe_row?(row)
  return false unless (row == row.sort || row == row.sort.reverse)
  row.each_with_index do |level, index|
    if row[index+1]
      if !(level - row[index+1]).abs.between?(1, 3)
        return false
      end
    end
  end
  true
end
