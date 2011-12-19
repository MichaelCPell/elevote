class CreatePrecincts < ActiveRecord::Migration
  def change
    create_table :precincts do |t|
      t.string :name
      t.integer :county_id
      t.timestamps
    end
  end
end
