class Giftboard < ActiveRecord::Base
  belongs_to :user
  has_many :ideas
  has_many :already_gifted_ideas
  has_many :shoppings
  validates :user_id, presence: true
  accepts_nested_attributes_for :ideas, :allow_destroy => true

  require 'date'
   	def next_birthday
    	Time.now.to_date.distance_to(self.birthday)
  	end
end
