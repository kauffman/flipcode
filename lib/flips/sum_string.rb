class SumString < BaseFlip

  desc "Assume a is worth 1, b is worth 2, etc. Case doesn't matter. Other characters are worth zero. Sum this person's name."
    
  def input_generator
    Faker::Name.first_name + ' ' + Faker::Name.last_name
  end

  def valid_output
    count = 0
    table = ('a'..'z').inject({}) { |h, chr| h[chr] = (count += 1); h }
    input.downcase.split('').inject(0) { |sum, i| sum += (table[i] || 0) }
  end

end
