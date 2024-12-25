class CodeBreaker
  attr_reader :guess_code

  def initialize(code_breaker)
    @code_breaker = code_breaker
    @guess_code = []
  end

  def get_guess_code
    self.guess_code = self.code_breaker.get_code
  end 

  private

  attr_reader :code_breaker
  attr_writer :guess_code 
end