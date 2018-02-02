require 'benchmark'

lines = []
File.open('file.txt') do |file| 
	lines = file.readlines
end

Benchmark.bm do |bm|
	bm.report do
		lines = lines.find_all {|line| line.include?("Truncated")}
	end
end
puts lines