require_relative 'instructor'
class ApprenticeTeacher < Instructor
  def initialize(options={})
    super
    @target_raise = 800# possibly make this  a constant
  end

  def teach_stuff #not sure how to refactor this, logic is the same, last two
                  #responses are what's different
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response

  end

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
