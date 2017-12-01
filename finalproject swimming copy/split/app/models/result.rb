class Swimmer < ApplicationRecord
  validates :minutes, presence: true, numericality: true
  validates :seconds, presence: true, numericality: true
  validates :swimmer, presence: true
  validates :event, presence: true

end
