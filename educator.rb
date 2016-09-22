class Educator
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @name = options.fetch(:name, "")
    @age = options.fetch(:age, 0)
    @phase = 3
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    if (self.class == Teacher && rating > 90) || (self.class == ApprenticeTeacher && rating > 80)
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
  end

    def teach_stuff
      if self.class == Teacher
        response = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
      else
        response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
    end
  end



end
