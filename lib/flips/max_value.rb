require 'flip'
class MaxValue < Flip

  desc 'Given a list of integers, return the single highest value.'
    
  def input_generator
    input = []
    15.times do
      input << rand(1500)
    end
    return input
  end

  def valid_output
    input.max
  end

end
