class Visit < ActiveRecord::Base
  validates :visitor, presence: true
  validates :animal_id, presence: true
  validates :date, presence: true, is_date: true
  def is_date
    if date[2]!="/" or date[5]!="/"
      errors.add(:volume, "date must be in the form mm/dd/year. You messed up the slashes.")
    end
    if date[0]numericality=
      errors.add(:volume, “cannot be above 400 cubic inches”)
    elsif volume < 20
      errors.add(:volume, “cannot be below 20 cubic inches”)
    end
  end
end
