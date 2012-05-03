class RemoveLeadingWhitespace < Flip

  desc "Remove leading whitespace"
    
  def input_generator
    random_whitespace + random_word + random_whitespace
  end

  def valid_output
    input.gsub(/^\s+/, '')
  end

end
