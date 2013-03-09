class Die
   attr_reader :cards
   def initialize
     @cards={11=>"ace",  6=>"six", 7=>"seven",
             8=>"eight", 9=>"nine", 10=>"ten", 2=>"jack", 3=>"lady", 4=>"king"}
   end
  def roll!
    rand(2..11)
  end

end