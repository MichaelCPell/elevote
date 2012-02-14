class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :parent_id

      t.text :content
      t.text :title

      t.integer :commentable_id
      t.string :commentable_type

      t.integer :authorable_id
      t.string :authorable_type

      t.integer :view_count
      t.integer :votes_count

      t.string :direction

      t.timestamps
    end
  end
end
