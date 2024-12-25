class Game
  def initialize(board, code_maker, code_breaker)
    @board = board
    @code_maker = code_maker
    @code_breaker = code_breaker
  end

  def get_secret_code
    @code_maker.get_secret_code
  end

  def get_guess_code
    @code_breaker.get_guess_code
  end

  def provide_feedback
    feedback = @code_maker.provide_feedback(@code_breaker.guess_code)
    feedback.each_with_index do |char, loc|
      @board.update_feedback(char, loc)
    end
    @board.shuffle_feedback
  end

  def correct_guess?
    feedback_entry = @board.board[@board.current_round][:feedback_entry]
    feedback_entry.all? {|feedback| feedback == 'r'}
  end
end