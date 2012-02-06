class CreateConstituents < ActiveRecord::Migration
  def change
    create_table :constituents do |t|
      t.string :name

      t.timestamps
    end
  end
end
