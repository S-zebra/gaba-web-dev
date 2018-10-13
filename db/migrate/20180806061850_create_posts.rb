class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :account, null: false
      t.references :post #in reply to...
      t.text :body, limit: 200
      t.integer :likes, null: false, default: 0
      t.timestamps
    end
  end
end
