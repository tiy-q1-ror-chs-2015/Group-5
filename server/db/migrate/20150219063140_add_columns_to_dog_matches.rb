class AddColumnsToDogMatches < ActiveRecord::Migration
  def change
    add_column :dog_matches, :dog_id, :integer
    add_column :dog_matches, :match_id, :integer
  end
end
