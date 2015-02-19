class CreateDogMatches < ActiveRecord::Migration
  def change
    create_table :dog_matches do |t|

      t.timestamps null: false
    end
  end
end
