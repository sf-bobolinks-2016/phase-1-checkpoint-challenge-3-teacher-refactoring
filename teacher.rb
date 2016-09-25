require_relative 'high_fivable'
require_relative 'educator'

class Teacher < Educator
  include HighFivable

  PERFORMANCE_RATING_THRESHOLD = 90
  TARGET_RAISE = 1000

  def initialize(options={})
    super
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

end
