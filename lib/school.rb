class School

  attr_reader :school_name
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

    def grade(num)
      return roster[num]
    end

    def sort
      @roster.each {|x,y| y.sort!}
    end

end
