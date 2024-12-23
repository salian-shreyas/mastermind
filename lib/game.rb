class Game
  def initialize(board, code_maker, code_breaker)
    @board = board
    @code_maker = code_maker
    @code_breaker = code_breaker
  end

  def give_feedback
    @code_breaker.code.each_with_index do |color, loc|
      if @code_maker.code[loc] == color          
        @board.update_feedback('r', loc) 
      elsif @code_maker.code.include? color
        @board.update_feedback('w', loc) 
      end
    end  

    @board.shuffle_feedback
  end

  def correct_guess?
    feedback_entry = @board.board[@board.current_round][:feedback_entry]
    feedback_entry.all? {|feedback| feedback == 'r'}
  end
end