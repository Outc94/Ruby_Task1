class Player
 def hand
   # Process of the following method is created in this.
   # Puts the console into an input wait state, and outputs the value the player types from the console
   puts "0:Rock"
   puts "1:Scissors"
   puts "2:Papers"
   playerhand_input = gets.to_i
   while playerhand_input > 2 or playerhand_input < 0 do
     puts "PLease enter a number from 0 to 2"
     playerhand_input = gets.to_i
   end
     puts "You chose #{playerhand_input}"
     playerhand_input
 end
end
class Enemy
 def hand
   # Create processing of the method that outputs the value of rock, paper, scissors at random in this
  random_choice=rand(0..2)
  puts "The computer chose #{random_choice}"
  random_choice
 end
end
class Game
 def pon(player_hand, enemy_hand)
   # Create a method in it that will cause the player to hit the value you typed in and the one that Enemy randomly gave out, and output the result on the console
   # At that time, when you enter values other than draw or rock, scissors, paper, do another game.
   # Show what the other party gave out of rock, scissors, paper
   difference = player_hand.to_i - enemy_hand.to_i
   result =(difference + 3)%3
   if result == 2
     puts "You won"
   elsif result == 1
     puts "You lost"
   else
     puts "it's a draw, one more time please"
     player = Player.new
     enemy = Enemy.new
     game = Game.new
     game.pon(player.hand, enemy.hand)
   end
 end
end
player = Player.new
enemy = Enemy.new
game = Game.new
# The Game method is invoked by the following description
game.pon(player.hand, enemy.hand)
# The Ruby description written here is a template prepared as a hint.
# If you want to implement without following the written description, you can implement it as you like.
# Any implementation will pass if it meets the requirements and the code quality is determined to be at a certain level.
