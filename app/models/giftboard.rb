class Giftboard < ActiveRecord::Base
  belongs_to :user
  has_many :ideas 
  validates :user_id, presence: true
  accepts_nested_attributes_for :ideas, :allow_destroy => true
end
