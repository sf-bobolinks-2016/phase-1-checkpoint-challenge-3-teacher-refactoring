require_relative 'Staff'

class Teacher < Staff

  attr_reader :performance_rating

  def initialize(options={})
    super(options)
    @phase = 3
    @target_raise = 1000
  end

  def teach_stuff
    response = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
    super(response)
  end

  def set_performance_rating(rating)
    super(rating, 90)
  end
end
