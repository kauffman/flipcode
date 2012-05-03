class RemoveTrailingWhitespace < Flip

  desc "Remove trailing whitespace"
    
  def input_generator
    random_whitespace + random_word + random_whitespace
  end

  def valid_output
    input.gsub(/\s+$/, '')
  end

end
