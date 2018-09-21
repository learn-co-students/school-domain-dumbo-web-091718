# code here!
require 'pry'
class School

  attr_accessor :roster
    def initialize(roster)

      @roster ={}
    end

    # def add_student(name, grade)
    #   @roster[grade] = []
    #  if @roster.keys.include?(grade)
    #    @roster[grade]<<name
    #  else @roster[grade]=name
    #   end
    # end

    def add_student(name, grade)
      if @roster.keys.include?(grade)
        @roster[grade] << name

      else
        @roster[grade] = [name]
      end
    end

    def grade(grade)
      @roster[grade].flatten

    end

    def sort
      @roster.each_value {|v| v.sort!}.to_h
    end
end
