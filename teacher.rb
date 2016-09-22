require_relative 'dbc_person'
require_relative 'teachable'

class Teacher < DBC_person
  include Teachable

  RATING_FLOOR = 90
  RESPONSE_1 = ", fo SHO! "
  RESPONSE_2 = "*drops flat-out insane knowledge bomb* "
  RESPONSE_3 = " *saunters away*"

  attr_reader :salary, :performance_rating, :target_raise

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
  end
end
