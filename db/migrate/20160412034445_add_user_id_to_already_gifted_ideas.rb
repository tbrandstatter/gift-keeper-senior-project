class AddUserIdToAlreadyGiftedIdeas < ActiveRecord::Migration
  def change
    add_column :already_gifted_ideas, :user_id, :string
  end
end
