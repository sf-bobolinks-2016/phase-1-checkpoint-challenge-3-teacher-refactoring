require_relative 'teacher_staff'

class Teacher < TeacherStaff
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise, :minimum_rating
  attr_accessor :name

  def offer_high_five
    "High five!"
  end

  def initialize(options={})
    super
    @target_raise = 1000
    @minimum_rating = 90
    @phase = 3
  end

  def feedback(rating)
    if rating < 90
      response += "feedback, I'll do better next time."
    end
  end
end
