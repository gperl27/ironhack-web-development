class Comment < ApplicationRecord
  belongs_to :concert
  validates :description, presence: true
end
