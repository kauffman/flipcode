require 'flip'
class RemoveTrailingWhitespace < Flip

  desc "Remove trailing whitespace"
    
  def input_generator
    #random_whitespace + random_word + random_whitespace
    #'   balls      '
    random_whitespace + random_word + random_whitespace
  end

  def output_validator(output)
    output == input.gsub(/\s+$/, '')
  end

end
