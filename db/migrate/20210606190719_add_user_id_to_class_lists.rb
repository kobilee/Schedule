class AddUserIdToClassLists < ActiveRecord::Migration[6.1]
  def change
    add_column :class_lists, :user_id, :integer
    add_index :class_lists, :user_id
  end
end
