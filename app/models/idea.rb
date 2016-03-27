class Idea < ActiveRecord::Base
  belongs_to :giftboard
  validates :content, presence: true, length: { maximum: 140 }
end
