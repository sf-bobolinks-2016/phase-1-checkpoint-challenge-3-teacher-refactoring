require_relative 'highfive'

class Teacher
  attr_reader :age, :salary, :phase,  :target_raise
  attr_accessor :name

  include Highfive

  def self.inherited(klass)
    klass.send(:define_method, :performance_rating) do
      raise NoMethodError
    end
  end

  def performance_rating

  end


  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age) {0}
    @name = options.fetch(:name) {''}
    @target_raise = 1000
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end


end
