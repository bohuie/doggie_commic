class AddComicIdToPanels < ActiveRecord::Migration
  def change
    add_column :panels, :comic_id, :integer
    add_index  :panels, :comic_id
  end
end
