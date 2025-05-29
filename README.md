# Mastermind

Mastermind is a game where you have to guess your opponent’s secret code within a certain number of turns. Each turn you get some feedback about how good your guess was – whether it was exactly correct or just the correct color but in the wrong space.

## How to play

Clone the repository and run command

<code>bundle exec ruby lib/game.rb</code>

Start the game and follow the instructions displayed.


If you choose code-maker computer will play as code-breaker. Enter the secret code and provide feedback when the computer guesses.

If the computer couldn't guess your secret code you win.


If you choose code-breaker computer will play as code-maker. Enter the secret code and computer will provide feedback.

Guess the correct code within 12 turns to win the game.