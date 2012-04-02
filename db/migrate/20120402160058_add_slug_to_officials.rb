class AddSlugToOfficials < ActiveRecord::Migration
  def change
    add_column :officials, :slug, :string
    add_index :officials, :slug
  end
end
