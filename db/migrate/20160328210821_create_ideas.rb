class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.text :content
      t.references :giftboard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
