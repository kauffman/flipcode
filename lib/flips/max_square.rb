class MaxSquare < BaseFlip

  desc 'Given a list of integers, return the highest perfect square. There will always be squares in the input.'
    
  def input_generator
    input = []
    10.times do
      input << rand(1500)
    end
    2.times do
      input << (5..38).to_a.sample ** 2
    end
    return input
  end

  def valid_output
    input.inject(0) { |max, i| i > max.to_i && (Math.sqrt(i) == Math.sqrt(i).to_i) ? i : max }
  end

end
