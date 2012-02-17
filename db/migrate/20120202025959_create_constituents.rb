class CreateConstituents < ActiveRecord::Migration
  def change
    create_table :constituents do |t|
      t.string :name
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
