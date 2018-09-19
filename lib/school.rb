# code here!


class School

attr_accessor :name, :shool, :roster

def initialize(name)
  @name = name
  @roster = {}
# binding.pry
end

def add_student(student_name, grade)
  (roster[grade] ||= []) << student_name

  # binding.pry
end


end
