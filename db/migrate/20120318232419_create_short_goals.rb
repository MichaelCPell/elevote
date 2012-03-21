class CreateShortGoals < ActiveRecord::Migration
  def change
    create_table :short_goals do |t|
      t.integer :official_id
      t.string :content

      t.timestamps
    end
  end
end
