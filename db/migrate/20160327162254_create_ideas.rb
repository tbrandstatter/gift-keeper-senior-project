class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.text :context
      t.references :giftboard, index: true
      t.timestamps null: false
    end
    add_index :ideas, [:giftboard_id]
  end
end
