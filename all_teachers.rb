class All_Teachers
  attr_reader :phase, :salary
  # attr_accessor

  # def set_phase(num)  # common to teachers classes
  #   @phase = num
  #   "Cool, I've always wanted to teach phase #{num}!"
  # end

  def salary=(new_salary) # common to teachers classes
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)  # common to teachers classes
    @salary += raise
  end

  def set_phase(num) # common to all three
    if self.class == Student
      response = ""
      if num == @phase
        response += "I'm doing phase #{@phase} again because "
        response += "I put my learning first. I'm gonna rock it!"
      else
        response = "Oooh, phase #{num}. I hope I'm ready!"
      end
      @phase = num
      response
    else
      @phase = num
      "Cool, I've always wanted to teach phase #{num}!"
    end
  end

end
