class AddDateToTodos < ActiveRecord::Migration[8.0]
  def change
    add_column :todos, :date, :integer
  end
end
