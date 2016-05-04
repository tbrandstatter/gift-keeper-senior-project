class Shopping < ActiveRecord::Base
  belongs_to :user
  validates :giftboard, presence: true
end
