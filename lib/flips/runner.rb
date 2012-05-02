
require 'remove_leading_and_trailing_whitespace.rb'
require 'pp'

code = lambda do |input|
  puts "foo!"
end

klass = RemoveLeadingAndTrailingWhitespace
flip = klass.new
pp flip.input
pp flip.valid_output
pp flip.validate_submission(code)

