class MaxValueDivisibleBy3 < Flip

  desc 'Given a list of integers, return the single highest value divisible by 3. If nothing is divisible by 3, return 0 (zero).'
    
  def input_generator
    input = []
    15.times do
      input << rand(1500)
    end
    return input
  end

  def valid_output
    input.inject(0) { |max, i| i > max.to_i && (i % 3 == 0) ? i : max }
  end

end
