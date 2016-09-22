require_relative 'module_common'
require_relative 'schoolstaff'

class ApprenticeTeacher < SchoolStaff
  include Common

  def initialize(options={})
    super
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
