class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.integer :candidate_id
      t.text :content
      t.string :category

      t.timestamps
    end
  end
end
