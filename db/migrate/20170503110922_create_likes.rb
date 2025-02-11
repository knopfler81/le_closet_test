class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :product_id
      t.integer :user_id
      t.boolean :liked, default: false

      t.timestamps
    end
  end
end
