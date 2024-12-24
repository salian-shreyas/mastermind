class CodeBreaker
  def initialize(code_breaker)
    @code_breaker = code_breaker
  end

  def get_guess_code
    self.code_breaker.get_code
  end 

  private

  attr_reader :code_breaker
end