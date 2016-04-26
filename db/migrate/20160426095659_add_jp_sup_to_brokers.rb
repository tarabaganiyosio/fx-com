class AddJpSupToBrokers < ActiveRecord::Migration
  def change
    add_column :brokers, :state, :string
    add_column :brokers, :jp_sup, :string
    add_column :brokers, :p_ref, :string
    add_column :brokers, :p_fee, :string
    add_column :brokers, :w_fee, :string
    add_column :brokers, :m_fee, :string
    add_column :brokers, :demo, :string
    add_column :brokers, :multi, :string
    add_column :brokers, :sp_met, :string
    add_column :brokers, :tr_sys, :string
    add_column :brokers, :platform, :string
    add_column :brokers, :tr_pos, :string
    add_column :brokers, :gmt, :string
    add_column :brokers, :rollover, :string
    add_column :brokers, :ma_cal, :string
    add_column :brokers, :lo_cut, :string
    add_column :brokers, :both, :string
    add_column :brokers, :ea_lim, :string
    add_column :brokers, :ma_occ, :string
    add_column :brokers, :ca_trs, :string
    add_column :brokers, :st_met, :string
    add_column :brokers, :mo_sup, :string
  end
end
