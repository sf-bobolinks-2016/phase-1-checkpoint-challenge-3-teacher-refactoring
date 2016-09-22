require_relative 'educator'
require_relative 'high_five'
require_relative 'phaser'

class ApprenticeTeacher < Educator
  include High_five
  include Phaser

  def initialize(options={})
    @target_raise = 800
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
