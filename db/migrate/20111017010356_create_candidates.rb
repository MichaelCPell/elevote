class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :portrait
      t.string :campaignSlogan
      t.text :aboutMe
      t.text :positions
      t.text :goals
      t.text :achievements
      t.string :office
      t.integer :race_id
      t.string :website

      t.timestamps
    end
  end
end
