class CommonChars < BaseFlip

  desc 'Given two strings, return the characters common to both in any order, as an array.'
    
  def input_generator
    [ Faker::Company.catch_phrase, Faker::Company.catch_phrase ]
  end

  def valid_output
    chars = {}
    input[0].split('').each do |i|
      chars[i] = 1
    end
    input[1].split('').each do |i|
      chars[i] = 2 if chars[i]
    end
    out = []
    chars.each do |char, count|
      out << char
    end
    return out
  end

  def validate_output(output)
    output.sort == valid_output.sort
  end

end
