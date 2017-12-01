class Swimmer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: true
  validates :club, presence: true
  has_many :results
  def self.search(term)
    if term
      where('first_name LIKE ?', "%#{term}%")
    else
      all
    end
end
end
