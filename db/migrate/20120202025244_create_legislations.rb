class CreateLegislations < ActiveRecord::Migration
  def change
    create_table :legislations do |t|
      t.string :name
      t.text :content
      t.integer :votes_count

      t.timestamps
    end
  end
end
