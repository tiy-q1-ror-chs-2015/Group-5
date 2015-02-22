class Match < ActiveRecord::Base
  has_many :matches, through: :dog_matches
  has_many :dog_matches
end
