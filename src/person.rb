class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = 0
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def iss_of_age?
    @age >= 18
  end

  def can_use_services?
    iss_of_age? && parent_permission
  end
end
