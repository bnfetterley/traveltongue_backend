class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.string :region
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
