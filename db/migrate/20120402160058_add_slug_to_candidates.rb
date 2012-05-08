class AddSlugToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :slug, :string
    add_index :candidates, :slug
  end
end
