class RemoveSomeLetters < BaseFlip

  desc 'Remove the letters g through t (both uppercase and lowercase) from the given string.'
    
  def input_generator
    Faker::Lorem.sentence
  end

  def valid_output
    input.gsub(/[G-T]|[g-t]/, '')
  end

end
