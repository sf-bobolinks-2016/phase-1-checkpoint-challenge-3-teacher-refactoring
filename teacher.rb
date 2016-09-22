require_relative 'educator'

class Teacher < Educator 
  attr_reader :performance_rating, :target_raise

  def initialize(options={})
    super
    @target_raise = 1000
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
     response = "Yay, I'm a great employee!"
     receive_raise(@target_raise)
   else
     response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
   end
   response
  end

end
