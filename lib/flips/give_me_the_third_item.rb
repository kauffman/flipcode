class GiveMeTheThirdItem < BaseFlip

  desc 'Input is a list. Return the third item from the list.'
    
  def input_generator
    input = []
    7.times do
      input << Faker::Company.name
    end
    return input
  end

  def valid_output
    input[2]
  end

end
