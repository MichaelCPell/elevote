class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.integer :official_id
      t.text :content
      t.string :type

      t.timestamps
    end
  end
end
