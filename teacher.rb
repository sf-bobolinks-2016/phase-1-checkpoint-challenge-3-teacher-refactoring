require_relative 'educator'
require_relative 'high_five'

class Teacher < Educator
  attr_reader :performance_rating

  def initialize(options={})
    @target_raise = 1000
    super
  end

end
