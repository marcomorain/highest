#!/usr/bin/env ruby
require 'trollop'
require_relative 'lib/highest.rb'

opts = Trollop::options do
  opt :file,   'The file to read from (default: stdin)', :type => :string
  opt :number, 'The number of elements to print', :type => :int, :default => 10
end

highest = Highest.new(opts[:number])
input   = opts[:file].nil? ? STDIN : File.open(opts[:file])

input.each_line { |line| highest << line.to_i }

top = highest.top
puts("Highest #{top.size} numbers:")
top.each { |n| puts(n) }
