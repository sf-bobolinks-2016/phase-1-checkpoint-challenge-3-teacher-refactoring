require_relative 'dbc_teammember'
require_relative 'module_teacher'

class Teacher <DBCTeam
  RATING_REVIEW = 90
  include Teach
  attr_reader :salary, :phase, :performance_rating, :target_raise

  def initialize(options={})
    super
    @target_raise = 1000
    @phase = 3
  end
end
