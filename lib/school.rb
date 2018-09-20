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
  #Long Way:
  if roster.has_keys?(grade)
    roster[grade] << [name]
  else
    roster[grade] = [name]
  end

  # binding.pry
end


def grade
  roster.select{ |k| k == grade }
# level_2_employees = ehash["employee"].select {|k| k["level"] == "2"}
  binding.pry
  # if roster[] = [grade]
  # else
  #   rooster[grade]  = [student]
  # end
# end
#
# def sort
#   student_name.each do |a, b|
#     a.sort!
#   end
end

end
