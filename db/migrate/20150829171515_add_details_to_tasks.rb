class AddDetailsToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :completed, :boolean
    change_column :tasks, :completed, :boolean, null: false, default: false

    add_column :tasks, :user_id, :integer
    change_column :tasks, :user_id, :integer, null: false
  end

  def self.down
    remove_column :tasks, :completed
    remove_column :tasks, :user_id
  end
end
