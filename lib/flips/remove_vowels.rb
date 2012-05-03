class RemoveVowels < BaseFlip

  desc 'Remove the vowels from the given string.'
    
  def input_generator
    Faker::Company.bs
  end

  def valid_output
    input.gsub(/[aeiou]/i, '')
  end

end
