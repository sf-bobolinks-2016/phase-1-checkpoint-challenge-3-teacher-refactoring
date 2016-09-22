require_relative 'dbc_teammember'
require_relative 'module_teacher'

class Teacher <DBCTeam
  include Teach
  attr_reader :salary, :phase, :performance_rating, :target_raise

  def initialize(options={})
    super
    @target_raise = 1000
    @phase = 3
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
