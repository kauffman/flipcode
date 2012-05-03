class ProductOfAll < BaseFlip

  desc 'Given a list of integers, return the product of multiplying them all together.'
    
  def input_generator
    input = []
    5.times do
      input << rand(1500)
    end
    return input
  end

  def valid_output
    input.inject(1) { |prod, i| prod *= i }
  end

end
