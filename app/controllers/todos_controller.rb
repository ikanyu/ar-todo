
class TodosController
    def self.findall
        todo = Todo.all
        TodoView.findall
    end

    def self.createlist(description)
        Todo.create(todojob: description, completed: "N")
        TodoView.createlist(description)
    end

    def self.deletelist(number)
        # todo = Todo.find(number.to_i)
        todo = Todo.find_by(id: number.to_i)
        if todo.nil?
            puts "List number is not in range. Please try again!"
        else
            todo.destroy
            TodoView.deletelist(todo.todojob)
        end
    end

    def self.completelist(number)
        todo = Todo.find_by(id: number.to_i)
        if todo.nil?
            puts "List number is not in range. Please try again!"
        else
            todo.update(completed: "Y")
            TodoView.completelist(todo.todojob)
        end
    end
end