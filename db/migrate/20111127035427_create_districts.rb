class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :category
      t.string :number
      t.string :tier

      t.timestamps
    end
  end
end
