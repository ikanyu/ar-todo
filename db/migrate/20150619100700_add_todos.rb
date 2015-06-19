class AddTodos < ActiveRecord::Migration
    def change
        create_table(:todos) do |t|
            t.string :todojob
            t.string :completed
            t.timestamps null: false
        end
    end
end