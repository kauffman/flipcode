class Fizz < Flip

  desc 'Concatenate the numbers from 1 through 25 with ":" as a dilemeter, except when the number is a multiple of the integer your code is passed. If it is a multiple, use "fizz" instead of the number.'
    
  def input_generator
    rand(6).to_i + 1
  end

  def valid_output
    output = []
    (1..25).each do |i|
      output << ((i % input == 0) ? 'fizz' : i)
    end
    output.join(':')
  end

end
