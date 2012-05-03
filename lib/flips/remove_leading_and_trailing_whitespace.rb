class RemoveLeadingAndTrailingWhitespace < BaseFlip

  desc "Remove leading and trailing whitespace"
    
  def input_generator
    random_whitespace + random_word + random_whitespace
  end

  def valid_output
    input.strip
  end

end
