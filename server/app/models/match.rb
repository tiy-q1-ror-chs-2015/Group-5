class Match < ActiveRecord::Base
  has_many :dogs, through: :dog_matches
  has_many :dog_matches
end
