# code here!
class School
    #attr_reader :name
    attr_accessor :roster
    
    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] 
            @roster[grade] << name 
        else
            @roster[grade] = [name]
        end 
    end

    def grade(grade)
        array = @roster.collect do |current_grade, name|
            if current_grade == grade 
                name
            end 
        end
        array.compact.flatten  
    end

    def sort
        @roster.each do |grade, names|
            names.sort!
        end
    end
end