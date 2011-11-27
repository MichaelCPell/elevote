class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :office
      t.string :number

      t.timestamps
    end
  end
end
