require_relative 'teacher'

class ApprenticeTeacher < Teacher
  attr_reader :salary, :target_raise
  RATING_THRESHOLD = 80

  def initialize(options={})
    super
    @target_raise = 800
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def set_performance_rating(rating)
    # raise NoMethodError if 
    # need raise error in here
      #things tried:
        #rating.is_a? Integer == false
        #rating == nil 
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
