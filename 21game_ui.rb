require './lib/die'
require './lib/players'
require './lib/step'
require './lib/game'
require './lib/check'
players = [Player.new("Gulec 1"), Player.new("Gulec 2")]
die=Die.new
game=Game.new
puts "Hi, it's 21 game"
  players.each do |player|
    step=Step.new(player)
  puts "#{player.name}, your turn.\n\n"
  step.begin_1(die.roll!)
  step.begin_2(die.roll!)
    puts "Your first cards is #{die.cards[step.f_step_1]} and #{die.cards[step.f_step_2]}"
    step.add
    puts "Your points is #{player.points}"
    break if player.points>21
    puts "Did you want more Points?"
    player_choice=gets.chomp
    until player_choice=="no" || player_choice=="No" || player.points>21
      step.begin_1(die.roll!)
      puts "Your card is #{die.cards[step.f_step_1]}"
      step.add
      puts "Your points is #{player.points}"
      break if player.points>21
      puts "Did you want more Points?"
      player_choice=gets.chomp
    end
  end
Check.new(players).checking

