require_relative 'lib/board'
require_relative 'lib/CodeBreaker'
require_relative 'lib/CodeMaker'
require_relative 'lib/game'
require_relative 'lib/player/computerPlayer'
require_relative 'lib/player/humanPlayer'

human_player = Player.new
computer_player = Computer.new
board = Board.new
code_maker = CodeMaker.new(computer_player)
code_breaker = CodeBreaker.new(human_player)
game = Game.new(board, code_maker, code_breaker)

puts "Secret code: #{game.get_secret_code}"
puts "Guess code : #{game.get_guess_code}"

# board.display
# 12.times do
#   code_breaker.get_code
#   board.update_code code_breaker.code
#   game.give_feedback
#   board.display

#   put "Code Breaker Won!!" if game.correct_guess?
#   board.current_round += 1
# end

# board.current_round -= 1
# puts "Code Maker Won!!" unless game.correct_guess?