# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, year)
        roster[year] ||= []
        roster[year] << student
    end

    def grade(year)
        roster.detect do |t, g|
            if t == year
                return g
            end
        end
    end

    def sort
        new_hash = {}
        roster.each do |t, g|
            new_hash[t] = g.sort
        end
        new_hash
    end

    
end