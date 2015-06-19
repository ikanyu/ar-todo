class TodoView
    def self.findall
        todo.each do |value|

            if value.completed == "Y"
                complete = "Completed"
            else
                complete = "Not Completed"
            end

            puts "#{value.id}" + " " + value.todojob + " " + "#{complete}"
        end
    end

    def self.createlist(description)
        puts "Appended \"#{description}\" to your TODO list..."
    end

    def self.deletelist(todojob)
        puts "Deleted \"#{todojob}\" to your TODO list..."
    end

    def self.completelist(todojob)
        puts "Completed \"#{todojob}\" to your TODO list..."
    end

end