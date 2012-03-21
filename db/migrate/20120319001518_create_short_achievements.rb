class CreateShortAchievements < ActiveRecord::Migration
  def change
    create_table :short_achievements do |t|
      t.integer :official_id
      t.string :content

      t.timestamps
    end
  end
end
