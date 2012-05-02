require 'remove_trailing_whitespace.rb'
require 'pp'

code = lambda do |input|
  input.gsub(/\s+$/, '')
end

klass = RemoveTrailingWhitespace
flip = klass.new
pp flip.validate_submission(code)

