class AddCsvConditionsToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :geoname_id, :integer
    add_column :locations, :continent_code, :string
    add_column :locations, :continent_name, :string
    add_column :locations, :country_iso_code, :string
    add_column :locations, :country_name, :string
    add_column :locations, :subdivision_iso_code, :string
    add_column :locations, :subdivision_name, :string
    add_column :locations, :city_name, :string
    add_column :locations, :metro_code, :integer
    add_column :locations, :time_zone, :string
  end
end
