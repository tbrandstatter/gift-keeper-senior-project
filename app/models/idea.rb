class Idea < ActiveRecord::Base
  belongs_to :giftboard, :class_name => "Giftboard"
  belongs_to :user, :class_name => "User"
  validates :content, presence: true, length: { maximum: 140 }
  validates :giftboard, presence: true
end
