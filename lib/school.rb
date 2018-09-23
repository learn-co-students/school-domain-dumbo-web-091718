# code here!
require 'pry'
class School

  attr_reader :name, :roster, :grade
  attr_accessor :grade_name


  def initialize(name)
    @name = name
    # binding.pry
    @roster = {}
  end


  # @student_hash = {}
  #
  def add_student(student, grade)
     @add_student = student
     # @roster = {grade => [student]}
     # binding.pry

     if @roster.keys.include?(grade)
       @roster[grade] << student
     else
       @roster[grade] = [student]
     end
  end

  def grade(grade)
    # binding.pry
    @roster[grade]

  end

  def sort
    # binding.pry
    @roster = @roster.sort
    # binding.pry
    count = 0
    # while count <= @roster.length
    begin
      if @roster[count][1] != @roster[count][1].sort
      #   count += 1
      # else
        @roster[count][1] = @roster[count][1].sort
      #   count = count + 1
      end
      count += 1
    end while count < @roster.length
    # binding.pry
    @roster.to_h
  end

end

# school = School.new()
