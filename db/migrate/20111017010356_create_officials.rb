class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :portrait
      t.string :campaignSlogan
      t.text :aboutMe
      t.text :positions
      t.text :goals
      t.string :office



      t.string :state
      t.string :racename
      t.integer :office_id
      t.integer :district_id
      t.integer :office_question_id

      t.string :image1
      t.string :image2


      t.timestamps
    end
  end
end
