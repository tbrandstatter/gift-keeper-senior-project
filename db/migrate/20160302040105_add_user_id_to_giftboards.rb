class AddUserIdToGiftboards < ActiveRecord::Migration
  def change
    add_column :giftboards, :user_id, :string
  end
end
