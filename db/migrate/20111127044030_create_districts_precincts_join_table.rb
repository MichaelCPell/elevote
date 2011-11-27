class CreateDistrictsPrecinctsJoinTable < ActiveRecord::Migration
  def up
    create_table :districts_precincts, :id => false do |t|
      t.integer :district_id
      t.integer :precinct_id
    end

  end

  def down
    drop_table :districts_precincts
  end
end
