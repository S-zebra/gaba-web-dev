class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :user_id, null: false
      t.string :disp_name
      t.string :bio
      t.string :location
      t.binary :icon, limit: 10.megabytes
      t.timestamps
    end
  end
end
