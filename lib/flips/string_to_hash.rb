class StringToHash < BaseFlip

  desc "Given a string of 'key:value' pairs joined by pipes, produce a hash."
    
  def input_generator
    (1..5).to_a.collect {
      random_word + ":" + random_word
    }.join('|')
  end

  def valid_output
    Hash[*input.split('|').collect { |i| i.split(':') }.flatten]
  end

end
