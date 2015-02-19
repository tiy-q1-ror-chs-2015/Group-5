class AddDogIdToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :dog_id, :integer
  end
end
