class Board
  attr_reader :board, :current_round

  def initialize
    self.board = Array.new(12) {{
      code_breaker_entry: Array.new(4, 'O'),
      feedback_entry: Array.new(4, 'o')
    }}
    self.current_round = 0
  end

  def update_code(code)
    code.each_with_index do |color, loc|
      self.board[current_round][:code_breaker_entry][loc] = color
    end
  end

  def update_feedback(feedback, loc)
    self.board[current_round][:feedback_entry][loc] = feedback
  end

  def shuffle_feedback
    self.board[current_round][:feedback_entry].shuffle!
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
  attr_writer :board, :current_round
end
