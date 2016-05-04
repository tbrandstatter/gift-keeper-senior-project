class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|
      t.text :content
      t.references :giftboard, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
