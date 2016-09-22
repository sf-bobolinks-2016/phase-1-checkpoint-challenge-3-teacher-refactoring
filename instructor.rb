require_relative 'dbc_person.rb'
class Instructor < DBCPerson
  attr_reader :salary, :target_raise

  def initialize(options = {})
    @phase = 3
    super#not sure what super is doing here, tests all pass without it
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
end
