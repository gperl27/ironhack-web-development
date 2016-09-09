class TimeEntry < ApplicationRecord
  belongs_to :project
  validates :hours, :minutes, numericality: true
  validates :hours, :minutes, :date, presence: true
end
