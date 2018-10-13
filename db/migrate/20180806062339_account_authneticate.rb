class AccountAuthneticate < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :password, :string
    change_column :accounts, :password, :string, null: false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25) null: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
