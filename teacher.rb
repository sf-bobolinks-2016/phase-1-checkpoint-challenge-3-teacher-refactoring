require_relative 'all_teachers'
require_relative 'feedback_module'

class Teacher < All_Teachers
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name
  include Feedback

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
  end

end
