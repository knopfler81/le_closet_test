class RemoveBooleanInLikes < ActiveRecord::Migration[5.0]
  def change
    remove_column :likes , :liked
  end
end
