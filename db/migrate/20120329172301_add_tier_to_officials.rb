class AddTierToOfficials < ActiveRecord::Migration
  def change
     add_column :officials, :tier, :integer
  end
end
