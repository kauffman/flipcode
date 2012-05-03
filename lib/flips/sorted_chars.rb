class SortedChars < Flip

  desc 'Sort the characters in a string into a new string. Standard ASCII sort.'
    
  def input_generator
    Faker::Lorem.sentence
  end

  def valid_output
    input.split(//).sort.join('')
  end

end
