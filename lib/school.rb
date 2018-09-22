require 'pry'

class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(stud_name, grade)
    if @roster[grade] == nil
      @roster[grade] = [stud_name]
    else
      @roster[grade] = @roster[grade] + [stud_name]
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    alphabetical_roster = {}
    self.roster.each do |grd,list|
      alphabetical_roster[grd] = list.sort
    end
    return alphabetical_roster
  end

end

