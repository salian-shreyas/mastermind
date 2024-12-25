class Computer
  VALID_CHARS = ["R", "G", "B", "Y", "V", "P"]

  def initialize
    @secret_code = []
  end

  def get_code
    self.secret_code = VALID_CHARS.shuffle[0..3]
  end

  def provide_feedback(guess_code)
    feedback = []
    guess_code.each_with_index do |code, loc|
      if self.secret_code[loc] == code
        feedback.push('r')
      elsif self.secret_code.include? code
        feedback.push('w')
      end
    end  
    feedback
  end

  private

  attr_accessor :secret_code
end