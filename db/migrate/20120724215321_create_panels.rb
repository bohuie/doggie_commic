class CreatePanels < ActiveRecord::Migration
  def change
    create_table :panels do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
