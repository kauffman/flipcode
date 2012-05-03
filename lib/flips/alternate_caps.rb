class AlternateCaps < BaseFlip

  desc 'Take a string as input and alternate its case. Start with upper-case.'
    
  def input_generator
    Faker::Company.bs
  end

  def valid_output
    count = 1
    input.split('').inject('') { |str, i| str += ((count += 1) % 2) == 0 ? i.upcase : i.downcase }
  end

end
