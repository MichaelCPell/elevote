class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voteable_id
      t.string :voteable_type

      t.integer :constituent_id

      t.timestamps
    end
  end
end
