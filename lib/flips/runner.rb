require 'remove_leading_whitespace.rb'
require 'pp'

code = lambda do |input|
  input.gsub(/^\s+/, '')
end

klass = RemoveLeadingWhitespace
flip = klass.new
pp flip.validate_submission(code)

