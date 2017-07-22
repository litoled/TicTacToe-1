class Player
  attr_accessor :name, :daggerZero
  def verificationName(nameVer)
    while !(/[A-Za-z]/=~nameVer)
      puts "You have to write a real name"
      nameVer = gets.chomp
    end
    return nameVer.capitalize
  end

  def verificationDaggerZero(nameVer)
    while !(nameVer == "C" || nameVer == "Z")
      puts "You have to write C or Z"
      nameVer = gets.chomp
    end
    return nameVer
  end
end

class Board

end

class BoardCase

end

class Game
  @@player1 = Player.new
  @@player2 = Player.new

  def initialize
    puts "Welcome to the best game in the world : \"Tic-Tac-Toe\" "
    puts "Player 1, write your name:"

    namePl = gets.chomp
    @@player1.name = @@player1.verificationName(namePl)
    puts "Player 2, write your name:"
    namePl = gets.chomp
    @@player2.name = @@player1.verificationName(namePl)

    puts @@player1.name + " , would you like to play with CROSSES or with ZERO? C/Z"
    daggerZero = gets.chomp
    @@player1.daggerZero = @@player1.verificationDaggerZero(daggerZero.upcase)
    @@player1.daggerZero
    if (@@player1.daggerZero == "C")
      @@player2.daggerZero = "Z"
    else
      @@player2.daggerZero = "C"
    end
    gamee
  end

  def game
    if ()
    puts @@player1.name + " , choose where you want to put " + @@player1.daggerZero + " 1 - 9"
  end
end

game = Game.new
#game.initialize doesn't work
