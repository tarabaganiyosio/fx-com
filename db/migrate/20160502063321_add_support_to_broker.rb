class AddSupportToBroker < ActiveRecord::Migration
  def change
    add_column :brokers, :support, :string
    add_column :brokers, :design, :string
    add_column :brokers, :feeling, :string
    add_column :brokers, :payment, :string
  end
end
