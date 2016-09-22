require_relative 'dbc_teammember'
require_relative 'module_teacher'


class ApprenticeTeacher < DBCTeam
  include Teach
  attr_reader :salary, :phase, :target_raise

  def initialize(options={})
    super
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
