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
  # p (roster[10] ||= [] << student_name)

  # binding.pry
end

def grade
  if roster[] = [grade]
  else
    rooster[grade]  = [student]
  end 
end

def sort
  student_name.each do |a, b|
    a.sort!
  end
end

end
