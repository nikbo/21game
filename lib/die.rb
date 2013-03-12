class Die
  attr_accessor :m, :k
   attr_reader :cards
   def initialize
     @cards={11=>"ace",  6=>"six", 7=>"seven",
             8=>"eight", 9=>"nine", 10=>"ten", 2=>"jack", 3=>"lady", 4=>"king"}
     @m=[2,2,2,2,3,3,3,3,4,4,4,4,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11]
     @k=35
   end
  def roll!
    rand(0..@k)
  end

end