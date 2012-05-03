class ProductOfMaxAndMin < BaseFlip

  desc 'Given a list of integers, return the product of multiplying the maximum by the minimum.'
    
  def input_generator
    input = []
    15.times do
      input << rand(1500)
    end
    return input
  end

  def valid_output
    input.max * input.min
  end

end
