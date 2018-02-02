File.open('file.txt') do |file| 
	lines = file.readlines
	p lines
end