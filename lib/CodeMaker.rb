class CodeMaker
  attr_reader :secret_code

  def initialize(code_maker)
    @code_maker = code_maker
    @secret_code = []
  end

  def get_secret_code
    self.secret_code = self.code_maker.get_code
  end

  def provide_feedback(guess_code)
    self.code_maker.provide_feedback(guess_code)
  end

  private

  attr_reader :code_maker
  attr_writer :secret_code
end