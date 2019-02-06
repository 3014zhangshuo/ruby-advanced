$LOAD_PATH << File.expand_path('../lib', __FILE__)

require 'track'

puts Track::VERSION
puts Track::Parser.parse
