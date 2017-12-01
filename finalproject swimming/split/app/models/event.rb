class Event < ApplicationRecord
  validates :distance, presence: true, numericality: true
  validates :stroke, presence: true
  has_many :results
  
  def name
    "#{distance}M #{stroke}"
  end
end
