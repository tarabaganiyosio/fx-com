class CreateWrites < ActiveRecord::Migration
  def change
    create_table :writes do |t|
      t.integer :user_id
      t.integer :board_id
      t.text :body

      t.timestamps null: false
    end
  end
end
