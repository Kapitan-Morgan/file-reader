def find_adjective(string)
	words = string.split(' ')
	index = words.find_index('is')
	words[index + 1]
end

lines = []
File.open('file.txt') do |file| 
	lines = file.readlines
end

relevant_lines = lines.find_all {|line| line.include?("Truncated")}
reviews = relevant_lines.reject{|line| line.include?('--')}

adjective = reviews.map do |review| 
	adjective = find_adjective(review)
	"'#{adjective.capitalize}'"
end

puts 'The critics agree, truncated is:'
puts adjective































=begin
require 'benchmark'
lines = []
File.open('file.txt', 'r+') do |file|
	old_pos = 0
	file.each do |line|
		file.pos = old_pos
        file.print line.gsub('--', '++')
        #lines = file.readlines
        old_pos = file.pos
        puts line
        puts '------------'
        puts file.pos
        puts '------------'
        puts file.print
    end
    puts old_pos
end
#puts puts lines
=end