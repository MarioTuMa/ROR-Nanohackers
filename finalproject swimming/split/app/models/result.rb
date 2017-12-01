class Result < ApplicationRecord
  validates :minutes, presence: true, numericality: true
  validates :seconds, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 60}
  validates :month, presence: true,  numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 12}
  validates :day, presence: true,  numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 31}
  validates :year, presence: true,  numericality: {only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: 2200}
  belongs_to :swimmer
  validates :lane, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10}

  belongs_to :event

end
