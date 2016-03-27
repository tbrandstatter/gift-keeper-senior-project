class Giftboard < ActiveRecord::Base
  belongs_to :user
  has_many :ideas, dependent: :destroy
  validates :user_id, presence: true
end
