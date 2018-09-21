require 'pry'
class School

attr_reader :name, :grade, :student_name

def roster
  @roster
end

  def initialize(name)
    @name = name
    @roster = {}

    puts ""
  end



def add_student(student_name, grade)

if @roster.keys.include?(grade)
  @roster[grade] << student_name
else
  @roster[grade] = [student_name]

  end
end

def grade(retreive_grade)
  @roster[retreive_grade]
end

def sort
  @roster.each do |grade, names|
    @roster[grade] = names.sort
     


    puts " "
  end
  end





end
