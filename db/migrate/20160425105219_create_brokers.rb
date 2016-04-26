class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :name
      t.string :location
      t.string :license
      t.string :max_lev
      t.string :spread
      t.string :min_amo
      t.string :tr_fee

      t.timestamps null: false
      
      t.index :name, unique: true
    end
  end
end
