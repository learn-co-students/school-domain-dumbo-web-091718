# code here!
require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
    @roster
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    roster.each_value { |student| student.sort! }
  end

end
