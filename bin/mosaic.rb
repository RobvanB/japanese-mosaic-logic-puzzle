#!/usr/bin/env ruby
filename = ARGV[0] # The first argument is the filename with the input table string

if (!filename)
  filename = "/usr1/home/rob/rubydev/japanese-mosaic-logic-puzzle/tmp/aruba/start_grid"
end

File.open(filename) do |f|
  string_input_table = f.read
  @input_array = string_input_table.split("\n").map{|row| row.split("|")[1..-1]}
end
#puts 'I should output the solution here.'

x = 0
cellcounter = 1

@input_array.each do  |myArray|
  puts myArray[x]
  x =+ 1
  if (cellcounter = 4)
    puts "\n"
    cellcounter = 1
  end
end