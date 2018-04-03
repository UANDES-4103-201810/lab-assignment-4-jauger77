class UserTicket < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  validates :cannot_be_created_after_the_event

  def cannot_be_created_after_the_event
    if time > ticket.event.start_date
      errors.add(:time "the date of bought is after the date of the event")
    end 
  def 


end
