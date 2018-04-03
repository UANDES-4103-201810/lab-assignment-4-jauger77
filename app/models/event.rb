class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validates :date_must_be_later_than_actual_date

  def date_must_be_later_than_actual_date
	if start_date.present? && start_date < Date.today
		errors.add(:start_date "must be later than actual date")
	end

end
