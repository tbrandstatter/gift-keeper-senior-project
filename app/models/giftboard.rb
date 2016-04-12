class Giftboard < ActiveRecord::Base
  belongs_to :user
  has_many :ideas 
  has_many :already_gifted_ideas
  validates :user_id, presence: true
  accepts_nested_attributes_for :ideas, :allow_destroy => true
end
