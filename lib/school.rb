require 'pry'

class School

  attr_accessor :roster
  attr_reader :grade

  def initialize(school)
    @roster = {}

  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    ordered = {}

    @roster.each do |grade, students|
      ordered[grade] = students.sort
    end
    ordered
  end
end
