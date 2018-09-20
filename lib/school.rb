require 'pry'
class School

  def roster
    @roster
  end

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def name
    @name
  end

  def add_student(student_name, student_grade)
    # @student_name = student_name
    # @student_grade = student_grade
    @roster[student_grade] = [student_name]
    binding.pry

  end

end

school = School.new("Bayside High School")
