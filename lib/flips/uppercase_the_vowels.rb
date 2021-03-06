class UppercaseTheVowels < BaseFlip

  desc 'Convert all of the vowels to uppercase, leaving all other characters alone.'
    
  def input_generator
    Faker::Company.bs
  end

  def valid_output
    input.tr('aeiou', 'AEIOU')
  end

end
