class AddBirthdayToGiftboards < ActiveRecord::Migration
  def change
    add_column :giftboards, :birthday, :date
  end
end
