class Step
  attr_reader :f_step_1, :f_step_2
  attr_accessor :step_intermediate, :step_intermediate_2
  def initialize(player)
    @player=player
    @step_intermediate_1=0
    @step_intermediate_2=0
    @f_step_1=0
    @f_step_2=0
    @steps_all=0
  end

  def begin_1(f_step_1)
    @f_step_1=f_step_1
    if @f_step_1 == 5
      @f_step_1=11
    end
  end
  def begin_2 (f_step_2)
    @f_step_2=f_step_2
    if @f_step_2 == 5
      @f_step_2=11
      end
  end
  def add
    @steps_all=@f_step_1+@f_step_2
    @player.add_points(@steps_all)
    @f_step_2=0
    @f_step_1=0
  end

end