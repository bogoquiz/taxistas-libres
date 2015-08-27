class AddGeocoordinatesToCabdriver < ActiveRecord::Migration
  def change
    add_column :cabdrivers, :latitude, :float
    add_column :cabdrivers, :longitude, :float

  end
end