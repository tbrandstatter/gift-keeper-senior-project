class Idea < ActiveRecord::Base
  belongs_to :giftboard
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
end
