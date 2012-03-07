class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.integer :endorsementable_id
      t.string :endorsementable_type

      t.integer :endorsementer_id
      t.string :endorsementer_type


      t.timestamps
    end
  end
end
