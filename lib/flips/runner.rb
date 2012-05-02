require ARGV[0]
require 'pp'

code = lambda do |input|
  puts "foo!"
end

pp klass = Kernel.const_get(ARGV[0].gsub(/.*\/(.*?)\.rb/, '\1').split(/_/).collect { |str| str.capitalize }.join(''))
flip = klass.new

puts "SAMPLE INPUT"
pp flip.input

puts "VALID OUTPUT"
pp flip.valid_output


# flip.validate_submission(code)

