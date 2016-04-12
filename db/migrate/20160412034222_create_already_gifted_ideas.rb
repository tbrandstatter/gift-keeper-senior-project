class CreateAlreadyGiftedIdeas < ActiveRecord::Migration
  def change
    create_table :already_gifted_ideas do |t|
      t.text :content
      t.string :image
      t.references :giftboard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
