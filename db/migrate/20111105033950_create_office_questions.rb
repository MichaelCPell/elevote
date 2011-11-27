class CreateOfficeQuestions < ActiveRecord::Migration
  def change
    create_table :office_questions do |t|
      t.string :name
      t.integer :office_id
      t.timestamps
    end
  end
end
