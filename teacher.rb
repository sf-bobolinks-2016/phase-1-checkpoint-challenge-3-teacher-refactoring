require_relative 'allteachers'

class Teacher < AllTeachers
  attr_reader :salary, :performance_rating, :target_raise

  TARGET_RAISE = 1000
  PHASE = 3

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
      receive_raise(TARGET_RAISE)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
