class Check
  def initialize(players)
    @players=players
  end
  def checking
    b=[]
    @players.each  {|player| b<<player.points}
    if b[0]==b[b.length-1]
      puts "Ups, drawn game!"
    elsif (b[0]-21).abs > (b[b.length-1]-21).abs
       puts "Gulec 2, you win!!!"
    elsif (b[0]-21).abs < (b[b.length-1]-21).abs
       puts "Gulec 1, you win!!!"
    end


    end
  end