# frozen_string_literal: true

# Manage computer-player functionalities
class Computer
  VALID_CHARS = %w[R G B Y V P].freeze

  def initialize
    @secret_code = []
  end

  def get_code
    self.secret_code = VALID_CHARS.sample(4)
  end

  def provide_feedback(guess_code)
    feedback = []
    guess_code.each_with_index do |code, loc|
      if secret_code[loc] == code
        feedback.push('r')
      elsif secret_code.include? code
        feedback.push('w')
      end
    end
    feedback
  end

  private

  attr_accessor :secret_code
end
