require_relative 'salary'
require_relative 'phase_teach'
require_relative 'highfive'

class ApprenticeTeacher
  include HighFive
  include Salary
  include PhaseTeach
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
