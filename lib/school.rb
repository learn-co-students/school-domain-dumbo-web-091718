# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      # @roster = {}
      # can also set:
       @roster = Hash.new {|k,v| k[v] = []}
      # and now just add in the addMethod: self.roster[grade]  << name
    # binding.pry
    end
    def roster
        @roster
    end

    def add_student(student_name, grade)
      # (roster[grade] ||= []) << student_name
      #or
          # self.roster[grade] ||= []
          # # #if sel.roster[grade] exist, leave it alone  else add a new array
          # self.roster[grade] << student_name

          #or
          @roster.has_key?(grade) ? roster[grade] << student_name : roster[grade] = [student_name]
            # does roster has a grade point ing at array if no add a grade and
            # array containing name as value else add an array containing "name"
    # binding.pry
    # self.roster => {}
    #  self => #<School:0x00007f878713bf30 @name="Test School", @roster={}>
    #              #Long Way:
            # if roster.has_key?(grade)
            #    roster[grade] << name
            # else
            #   roster[grade] = [name]

            # end

      # binding.pry
    end


    def grade(grade)
    #   self.roster.select { |grade, students|
    #   students == grade }.values #not working ?
    self.roster[grade] # also works
      # self.roster.select { |k, v| v == grade } # Will return students and grades that match the grade {10=>["Avi Flombaum", "Jeff Baird"]}
    # level_2_employees = self.roster["employee"].select {|k| k["level"] == "2"}
      # binding.pry
          # ******** this returns an array students but nil for those  who dont evealute to true
       Array.new << self.roster.collect do |grade, student|
        if 10 == grade
        unless student.nil?
        return student
        end
        end
      end


    end

    def sort

      self.roster.each do |grade, students|
      students.sort!
      end
    end
end
