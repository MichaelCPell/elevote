class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :status
      t.integer :official_id
      t.integer :constituent_id
      t.integer :legislation_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
