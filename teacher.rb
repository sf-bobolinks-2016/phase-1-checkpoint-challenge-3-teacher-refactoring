require_relative 'salary'
require_relative 'phase_teach'
require_relative 'highfive'

class Teacher
  include HighFive
  include Salary
  include PhaseTeach
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
  end
end
