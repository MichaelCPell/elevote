class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :status
      t.integer :official_id
      t.integer :legislation_id

      t.timestamps
    end
  end
end
