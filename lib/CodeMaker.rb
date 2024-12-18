class CodeMaker
  COLORS = ["R", "G", "B", "Y", "V", "P"]

  attr_reader :code

  def initialize
    self.code = make_code
  end

  private
  attr_writer :code

  def make_code
    COLORS.shuffle[0..3]
  end
end