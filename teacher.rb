require_relative 'educator'
require_relative 'high_five'
require_relative 'phaser'

class Teacher < Educator
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name
  include High_five
  include Phaser

  def initialize(options={})
    @target_raise = 1000
    super
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end
end
