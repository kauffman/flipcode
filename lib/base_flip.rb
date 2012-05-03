class BaseFlip
  def input
    @input ||= input_generator
  end

  def validate_submission(code)
    l = lambda do |input|
      eval code
    end

    validate_output(l.call(input))
  rescue
    false
  end

  @@flips = []
  def self.desc(description)
    BaseFlip.register_flip(self)
    @description = description
  end

  def self.register_flip(klass)
    @@flips << klass
  end

  def self.flips
    @@flips
  end

  def self.description
    @description
  end

  def description
    self.class.description
  end

  def random_word
    Faker::Lorem.words(1).first
  end

  def random_whitespace
    chars = [ " ", "\t", "\n" ] 
    ws = ''
    rand(15).times { ws << chars.sample } 
    ws
  end

  def validate_output(output)
    output == valid_output
  end

end
