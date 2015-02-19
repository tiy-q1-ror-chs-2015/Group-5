class AddColumnsToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :name, :string
    add_column :dogs, :breed, :string
    add_column :dogs, :age, :integer
    add_column :dogs, :email, :string
    add_column :dogs, :gender, :string
    add_column :dogs, :photo, :string
    add_column :dogs, :disposition, :string
  end
end
