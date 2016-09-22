module PhaseTeach

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    if self.class == Teacher
      response += "Listen, class, this is how everything works, fo SHO! "
      response += "*drops flat-out insane knowledge bomb* "
      response += "... You're welcome. *saunters away*"
      response
    elsif self.class == ApprenticeTeacher
      response += "Listen, class, this is how everything works. "
      response += "*drops crazy knowledge bomb* "
      response += "... You're welcome."
      response
    end
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 80 && self.class == ApprenticeTeacher
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    elsif rating > 90 && self.class == Teacher
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

end
