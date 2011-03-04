def name_score(name = "")
  score = 0
  name.upcase!
  name.each_byte do |b|
    score += b - ?A + 1
  end

  return score
end

name_file = File.open("problem022.txt", "r")
contents = name_file.readline
name_file.close
unf_names = contents.split(",")
names = unf_names.collect { |name| name.match(/[A-Z]+/).to_s }
names = names.sort
name_scores = 0
i = 1
names.each do |name|
  puts "#{i} #{name}"
  name_scores += i * name_score(name)
  i += 1
end
puts(name_scores)


