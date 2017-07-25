class CreateMapTable < ActiveRecord::Migration[5.1]
  def change
    create_table :map_tables do |t|
      t.string :name
      t.text :notes
      t.float :latitude
      t.float :longitude
      t.timestamps

    end
  end
end
