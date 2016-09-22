module Dbc
  attr_reader :age, :phase
  attr_accessor :name

  # def initialize(options = {})
  #   # @phase = 1
  #   # @age = options.fetch(:age, 0)
  #   # @name = options.fetch(:name, "")
  # end

  def person_age (age)
    @age = age
  end

  def person_phase (phase)
    @phase = phase
  end

  def person_name (options = {})
    @name = options.fetch(:name, "")
  end
end
