class Animal < ActiveRecord::Base
  validates :name, presence: true
  validates :kind, presence: true
  validates :age, presence: true
  validates :age, numericality: true

  has_many :visits
end
