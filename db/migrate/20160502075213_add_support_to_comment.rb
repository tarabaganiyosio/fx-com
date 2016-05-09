class AddSupportToComment < ActiveRecord::Migration
  def change
    add_column :comments, :support, :string
    add_column :comments, :design, :string
    add_column :comments, :feeling, :string
    add_column :comments, :payment, :string
  end
end
