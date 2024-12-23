require_relative 'lib/board'
require_relative 'lib/CodeBreaker'
require_relative 'lib/CodeMaker'
require_relative 'lib/game'

board = Board.new
code_maker = CodeMaker.new
code_breaker = CodeBreaker.new
game = Game.new(board, code_maker, code_breaker)

board.display
12.times do
  code_breaker.get_code
  board.update_code code_breaker.code
  game.give_feedback
  board.display

  put "Code Breaker Won!!" if game.correct_guess?
  board.current_round += 1
end

board.current_round -= 1
puts "Code Maker Won!!" unless game.correct_guess?