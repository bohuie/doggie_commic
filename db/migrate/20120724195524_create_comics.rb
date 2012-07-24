class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.integer :order_id
      t.string :title

      t.timestamps
    end
  end
end
