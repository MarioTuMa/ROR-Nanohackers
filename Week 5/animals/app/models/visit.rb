class Visit < ActiveRecord::Base
  validates :visitor, presence: true
  validates :animal, presence: true

  belongs_to :animal
end
