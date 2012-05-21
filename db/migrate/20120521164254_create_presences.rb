class CreatePresences < ActiveRecord::Migration
  def change
    create_table :presences do |t|
      t.integer :candidate_id
      t.integer :site_id

      t.timestamps
    end
  end
end
