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
    if @roster.keys.include?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = [student_name]
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    newHash = Hash.new
    @roster.collect do |grade, students|
       newHash[grade] = students.sort
    end
    return newHash
  end

end

school = School.new("Bayside High School")
