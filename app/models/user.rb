class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
        validates :email, presence: true 
	validates :phone, length: { minimum: 9}
	validates :phone, length: { maximum: 12}
	validates :phone, format: { with: / \d /, message: "only allows numbers"}
	validates :password, length: {minimum: 8}
	validates :password, length: {maximum: 12}
	validates :password, format:  { with: /\A[a-zA-Z]+\z+\d/, message: "only allows numbers and letters" }
end
