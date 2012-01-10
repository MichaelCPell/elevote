class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :category
      t.string :number
      t.integer :office_id
      t.string :gpe

      t.timestamps
    end
  end
end
