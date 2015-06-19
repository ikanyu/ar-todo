# puts ARGV.inspect
require_relative 'config/application'
command = ARGV[0]
description = ARGV[1]

# p command
# p description

if command == "list"
    TodosController.findall
elsif command == "add"
    TodosController.createlist(description)
elsif command == "delete"
    TodosController.deletelist(description)
elsif command == "complete"
    TodosController.completelist(description)
else
    puts "Incorrect command! Please run the file again with correct command: list, add, delete or complete. Bye!"
end