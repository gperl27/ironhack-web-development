class Concert < ApplicationRecord
  has_many :comments
  validates :city, :price, :description, :artist, :venue, :date, presence: true
  validates :price, numericality: true
end
