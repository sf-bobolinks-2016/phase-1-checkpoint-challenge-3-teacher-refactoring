require_relative 'dbc_person'
require_relative 'teachable'

class ApprenticeTeacher < DBC_person
  include Teachable

  RATING_FLOOR = 80
  RESPONSE_1 = ". "
  RESPONSE_2 = "*drops crazy knowledge bomb* "
  RESPONSE_3 = ""

  attr_reader :salary, :target_raise

  def initialize(options={})
    super
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
