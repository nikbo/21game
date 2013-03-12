class Step
  attr_reader :f_step_1, :f_step_2
  attr_accessor :step_intermediate, :step_intermediate_2, :n
  def initialize(player,die)
    @die=die
    @player=player
    @step_intermediate_1=0
    @step_intermediate_2=0
    @f_step_1=0
    @f_step_2=0
    @steps_all=0
    @l=0
    @n=0
    @f_step_1=0
    @f_step_2=0
  end

  def begin_1
    @n=@die.roll!
    @f_step_1=@die.m[@n]
    @die.m.delete_at(n)
    add_ace
    @die.k-=1
  end
  def begin_2
    @n=@die.roll!
    @f_step_2=@die.m[@n]
    add_ace
    @die.m.delete_at(n)
    @die.k-=1
  end
  def add
    @steps_all=@f_step_1+@f_step_2
    @player.add_points(@steps_all)
    @f_step_2=0
    @f_step_1=0
  end
  #hash.delete("1")
  def add_ace
    if @f_step_1==11 || @f_step_2==11
       @l+=1
    end
  end
  def check_ace
    if @player.points>21 && @l>=1
      @player.add_points(-10)
      @l=0
    end
end

end