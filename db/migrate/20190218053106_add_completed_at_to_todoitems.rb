class AddCompletedAtToTodoitems < ActiveRecord::Migration[5.2]
  def change
    add_column :todolists, :completed_at, :datetime
  end
end
