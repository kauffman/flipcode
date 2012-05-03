class BaseFlip
  def input
    @input ||= input_generator
  end

  def run_user_code(code)
    l = lambda do |input_orig|
      input = Marshal.load(Marshal.dump(input_orig))
      eval code
    end
    l.call(input)
  rescue Exception, RuntimeError => e
    "ERROR: #{e.class} #{e.message}"
  end

  def validate_submission(code)
    validate_output(run_user_code(code))
  rescue Exception, RuntimeError
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

flips_dir = Flipcode::Application.config.root.to_s + '/lib/flips/*.rb'
Dir[flips_dir].each do |flip|
  require flip
end

