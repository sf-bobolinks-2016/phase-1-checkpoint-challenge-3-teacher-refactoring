class All_Teachers
  attr_reader :phase, :salary
  # attr_accessor

  def set_phase(num)  # common to teachers classes
    # if self.class == Student
    #   response = ""
    #   if num == @phase
    #     response += "I'm doing phase #{@phase} again because "
    #     response += "I put my learning first. I'm gonna rock it!"
    #   else
    #     response = "Oooh, phase #{num}. I hope I'm ready!"
    #   end
    #   @phase = num
    #   response
    # else
      @phase = num
      "Cool, I've always wanted to teach phase #{num}!"
    # end
  end

  def salary=(new_salary) # common to teachers classes
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)  # common to teachers classes
    @salary += raise
  end

  def teach_stuff # common to teachers classes with different outputs
    if self.class == ApprenticeTeacher
      response = ""
      response += "Listen, class, this is how everything works. "
      response += "*drops crazy knowledge bomb* "
      response += "... You're welcome."
      response
    else
      response = ""
      response += "Listen, class, this is how everything works, fo SHO! "
      response += "*drops flat-out insane knowledge bomb* "
      response += "... You're welcome. *saunters away*"
      response
    end
  end

  def set_performance_rating(rating) # common to teachers classes with different outputs
    if self.class == ApprenticeTeacher
      response = ""
      if rating > 80
        response = "Yay, I'm a great employee!"
        receive_raise(@target_raise)
      else
        response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
      end
      response
    else
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

end
