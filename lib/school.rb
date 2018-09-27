# code here!
require 'pry'

class School
attr_reader :name
attr_accessor :roster, :student, :grade



  def initialize(name)
    @name = name
    @roster = {}

  end

 def add_student(student, grade)

  if @roster.key?(grade) == true
     @roster[grade] << student
   else
    @roster[grade] = []
    @roster[grade] << student
  end
end

def grade(grade)
 return @roster[grade]
end

def sort
      @roster.each do |key, value|
        @roster[key] = value.sort
      end
      @roster = @roster.sort.to_h
      return roster
  end

end
