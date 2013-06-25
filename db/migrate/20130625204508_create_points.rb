class CreatePoints < ActiveRecord::Migration
  def up
    create_table :points do |t|
      t.string :latitude
      t.string :longitude
      t.datetime :date_there
      t.string :speed
      t.string :heading
    end
  end

  def down
    drop_table :points
  end
end
