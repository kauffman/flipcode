class RemoveTrailingWhitespace < BaseFlip

  desc "Remove trailing whitespace."
    
  def input_generator
    random_whitespace + random_word + random_whitespace
  end

  def valid_output
    input.rstrip
  end

end
