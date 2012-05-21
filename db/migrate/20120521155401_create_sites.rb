class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :state
      t.string :county

      t.timestamps
    end
  end
end
