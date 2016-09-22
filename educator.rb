require_relative 'person'

class Educator < Person
  attr_reader :salary, :target_raise

  def initialize(options={})
    super(options)
    @phase = options.fetch(:phase) {3}
    @salary = options.fetch(:salary) {0}
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end
end