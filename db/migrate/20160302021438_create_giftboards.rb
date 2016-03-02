class CreateGiftboards < ActiveRecord::Migration
  def change
    create_table :giftboards do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :giftboards, [:user_id]
  end
end
