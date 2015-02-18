class AddColumnsToUserTable < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :breed, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :photo, :text
    add_column :users, :disposition, :string
  end
end
