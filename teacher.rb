require_relative 'educator'

class Teacher < Educator
  RATING_THRESHOLD = 90

  attr_reader :performance_rating

  def initialize(options={})
    super(options)
    @target_raise = 1000
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def set_performance_rating(rating)
    @performance_rating = rating
    super
  end
end
