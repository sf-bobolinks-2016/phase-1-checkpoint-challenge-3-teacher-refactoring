require_relative 'person'

#Educator inherits from person since all classes share functionality of
#person, but only a few share share the attributes of an educator.
class Educator < Person
	attr_reader :salary, :target_raise

	def initialize(options = {})
		@phase = 3
    	@age = options.fetch(:age, 0)
    	@name = options.fetch(:name, "")
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