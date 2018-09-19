# code here!
class School
  attr_reader :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name 
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = @roster.each { |grade, students| @roster[grade] = students.sort }
  end
end

