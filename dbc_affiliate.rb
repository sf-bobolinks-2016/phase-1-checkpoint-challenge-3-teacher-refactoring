require_relative 'high_five'

class DBC_affiliate
  attr_reader :age, :phase
  attr_accessor :name
  include High_five

    def initialize(options={})
    if self.class == Student
      @phase = 1
    else
      @phase = 3
    end
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end




  def set_phase(num)
    if self.class == Student
      if num == @phase
        response = "I'm doing phase #{@phase} again because I put my learning first. I'm gonna rock it!"
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
