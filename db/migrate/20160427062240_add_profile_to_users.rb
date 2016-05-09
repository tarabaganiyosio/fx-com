class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :string
    add_column :users, :age, :string
    add_column :users, :experience, :string
    add_column :users, :prefecture, :string
  end
end
