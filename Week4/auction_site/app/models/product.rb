class Product < ApplicationRecord
  belongs_to :user
  validates :title, :description, :deadline, presence: true
end
