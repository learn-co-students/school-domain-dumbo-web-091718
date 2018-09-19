# code here!
class School

  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)

    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map { |k, v| [k, v.sort] }.to_h
  end

end
