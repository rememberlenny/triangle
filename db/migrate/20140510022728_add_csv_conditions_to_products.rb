class AddCsvConditionsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :geoname_id, :integer
    add_column :products, :continent_code, :string
    add_column :products, :continent_name, :string
    add_column :products, :country_iso_code, :string
    add_column :products, :country_name, :string
    add_column :products, :subdivision_iso_code, :string
    add_column :products, :subdivision_name, :string
    add_column :products, :city_name, :string
    add_column :products, :metro_code, :integer
    add_column :products, :time_zone, :string
  end
end
