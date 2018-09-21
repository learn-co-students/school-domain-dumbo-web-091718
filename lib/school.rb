require 'pry'

class School

  attr_accessor :roster, :grade
  attr_reader :name

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    # adding name to hash
    # binding.pry
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    # binding.pry
    @roster.fetch(grade)
  end

  def sort
    # binding.pry
    #eq({7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer
    #Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]})
    # @roster.values
    @roster.each_value{|student| student.sort!}
  end
end
