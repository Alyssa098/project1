class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  has_many :reviews
  validates :name, :uniqueness => true
end