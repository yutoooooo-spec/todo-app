class CreateTodos < ActiveRecord::Migration[8.0]
  def change
    create_table :todos do |t|
      t.text :task
      t.integer :date

      t.timestamps
    end
  end
end
