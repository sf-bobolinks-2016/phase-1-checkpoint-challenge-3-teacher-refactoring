require_relative 'teacher_staff'

class ApprenticeTeacher < TeacherStaff

  attr_reader :age, :salary, :phase, :target_raise, :minimum_rating
  attr_accessor :name

  def offer_high_five
    "High five!"
  end

  def initialize(options={})
    super
    @target_raise = 800
    @minimum_rating = 80
    @phase = 3
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
