require_relative 'educator'

class ApprenticeTeacher < Educator
  RATING_THRESHOLD = 80

  def initialize(options={})
    super(options)
    @target_raise = 800
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end