require_relative 'educator'
require_relative 'high_five'


class ApprenticeTeacher < Educator

  def initialize(options={})
    @target_raise = 800
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
