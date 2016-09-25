require_relative 'educator'

class ApprenticeTeacher < Educator
  undef_method :performance_rating

  PERFORMANCE_RATING_THRESHOLD = 80
  TARGET_RAISE = 800

  def initialize(options={})
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end
end
