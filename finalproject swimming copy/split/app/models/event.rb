class Swimmer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: true
  validates :club, presence: true
end
