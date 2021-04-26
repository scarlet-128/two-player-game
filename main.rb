require './player'
require './question'

P1 = Player.new('Player1')
P2 = Player.new('Player2')


def turn(current_player)

  print "#{current_player.name}: What does #{Question.num1} plus #{Question.num2} equal?
        >"

  answer_guess = gets.chomp

  if Question.validation(answer_guess)
    puts "#{current_player.name}:Yes! You are correct."
  else
    puts "#{current_player.name}:Seriously? No!"
    current_player.incorrect
  end

  puts "#{P1.name}: #{P1.life}/3 vs #{P2.name}: #{P2.life}/3
         ---------NEW TURN ---------"
  

end


loop do
  turn(P1)
  break puts "Player 2 wins with a score of #{P2.life}/3" if (P1.gameover)
  turn(P2)
  break puts "Player 1 wins with a score of #{P1.life}/3" if (P2.gameover)
  
end

puts "-------- GAME OVER --------
Good bye!"