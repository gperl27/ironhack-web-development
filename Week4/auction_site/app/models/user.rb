class User < ApplicationRecord
  has_many :products
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
