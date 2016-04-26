class AddStateToBrokers < ActiveRecord::Migration
  def change
    add_column :brokers, :capital, :string
    add_column :brokers, :lang, :string
    add_column :brokers, :cur, :string
    add_column :brokers, :order, :string
    add_column :brokers, :min_lot, :string
    add_column :brokers, :max_lot, :string
    add_column :brokers, :cur_pair, :string
    add_column :brokers, :p_met, :string
    add_column :brokers, :b_pro, :string
  end
end
