require_relative 'staff'

class ApprenticeTeacher < Staff

  def initialize(options={})
    super(options)
    @target_raise = 800
    @phase = 3
  end

  def teach_stuff
    response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
    super(response)
  end

  def set_performance_rating(rating)
    super(rating, 80)
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
