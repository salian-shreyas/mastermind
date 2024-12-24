class CodeMaker
  def initialize(code_maker)
    @code_maker = code_maker
  end

  def get_secret_code
    self.code_maker.get_code
  end

  private

  attr_reader :code_maker
end