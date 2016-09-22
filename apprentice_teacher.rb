require_relative 'all_teachers'
require_relative 'feedback_module'

class ApprenticeTeacher < All_Teachers
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  include Feedback

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
