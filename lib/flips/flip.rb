require 'faker'

class Flip #< Flipcode::AbstractFlip
  def input
    @input ||= input_generator
  end

  def validate_submission(code)
    output_validator(code.call(input))
  end

  def self.desc(description)
    @@description = description
  end

  def desc
    @@description
  end

  def random_word
    Faker::Lorem.words(1).first
  end

  def random_whitespace
    chars = [ " ", "\t", "\n" ] 
    ws = ''
    rand(15).times { ws << chars.rand } 
    ws
  end

end
