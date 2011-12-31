class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :category
      t.string :number
      t.string :gpe
      t.integer :office_id

      t.timestamps
    end
  end
end
