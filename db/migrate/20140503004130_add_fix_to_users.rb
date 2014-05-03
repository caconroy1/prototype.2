class AddFixToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_photo, :binary
  end
end
