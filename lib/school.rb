# code here!
require 'pry'
class School


def initialize(school_name)
  @school_name=school_name
  @roster={}
end

def roster
  return @roster
end

def add_student(name,grade)

if @roster[grade]==nil
  @roster[grade]=[]
  @roster[grade]<<name
else
  @roster[grade]<<name
end
end

def grade (grade)
return @roster[grade]
end

def sort
  Hash[@roster.sort]
  @roster.each do |key,value|
    value.sort!
  end


end
end
