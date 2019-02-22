# code here!
class School
  attr_reader :roster
  
  def initialize(roster)
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade].push(name)
    else
      @roster[grade] = []
      @roster[grade].push(name)
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each do |k, v|
      v.sort!
    end.sort_by do |k, v|
      k
    end.to_h
  end
end
