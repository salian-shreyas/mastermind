class Board
  attr_reader :board

  def initialize
    self.board = Array.new(12) {{
      code_breaker_entry: Array.new(4, 'O'),
      feedback_entry: Array.new(4, 'o')
    }}
  end

  def display
    print "\n"
    board.each do |row|
      print "\n #{row[:feedback_entry][0]} #{row[:feedback_entry][1]} |"

      print "\n     |"
      row[:code_breaker_entry].each {|space| print " #{space} "}

      print "\n #{row[:feedback_entry][2]} #{row[:feedback_entry][3]} |"
      print "\n-----+-----------"
    end
    print "\n\n"
  end
  
  private 
  attr_writer :board
end