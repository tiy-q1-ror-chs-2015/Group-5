class Dog < ActiveRecord::Base

  has_many :matches, through: :dog_matches
  has_many :dog_matches

  validates :email, presence: true
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :photo, presence: true
  validates :email, presence: true
end
