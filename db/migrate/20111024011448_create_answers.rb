class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name
      t.integer :official_id
      t.integer :question_id
      t.integer :office_question_id

      t.timestamps
    end
  end
end
