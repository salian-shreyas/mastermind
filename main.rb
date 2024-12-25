# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/CodeBreaker'
require_relative 'lib/CodeMaker'
require_relative 'lib/game'
require_relative 'lib/player/computerPlayer'
require_relative 'lib/player/humanPlayer'

human_player = Player.new
computer_player = Computer.new
board = Board.new

puts 'Hello welcome to mastermind!'
puts 'Enter 1 if wish to play as code-breaker'
puts 'Enter 2 if wish to play as code-maker: '
player_choice = gets.chomp.to_i

if player_choice == 1
  code_maker = CodeMaker.new(computer_player)
  code_breaker = CodeBreaker.new(human_player)
elsif player_choice == 2
  code_maker = CodeMaker.new(human_player)
  code_breaker = CodeBreaker.new(computer_player)
end

game = Game.new(board, code_maker, code_breaker)

code_maker.get_secret_code
12.times do
  code_breaker.get_guess_code
  board.update_code code_breaker.guess_code
  game.provide_feedback
  board.display

  puts 'Code Breaker Won!!' if game.correct_guess?
  board.increment_current_round
end

board.decrement_current_round
puts 'Code Maker Won!!' unless game.correct_guess?

puts 'Thank you for playing!'
