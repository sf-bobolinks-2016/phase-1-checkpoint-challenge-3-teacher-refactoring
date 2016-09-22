module Teachable
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > self.class::RATING_FLOOR
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works"
    response += self.class::RESPONSE_1
    response += self.class::RESPONSE_2
    response += "... You're welcome."
    response += self.class::RESPONSE_3
    response
  end
end
