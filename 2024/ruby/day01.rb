def total_distance(locations)
  col1 = []
  col2 = []
  total_distance = 0

  locations.split("\n").each do |str|
    col1 << str.split.first.to_i
    col2 << str.split.last.to_i
  end
  col1.sort!
  col2.sort!

  col1.each_with_index do |location, index|
    total_distance += (col2[index] - location).abs
  end
  total_distance
end

def similarity_score(locations)
  similarity_score = 0
  col1 = []
  col2 = []

  locations.split("\n").each do |str|
    col1 << str.split.first.to_i
    col2 << str.split.last.to_i
  end

  col1.each do |location|
    similarity_score += location * col2.count(location)
  end

  similarity_score
end