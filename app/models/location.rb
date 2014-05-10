class Location < ActiveRecord::Base

  def self.import(file)
    SmarterCSV.process(file.tempfile, {
    :key_mapping => {
      :geoname_id => :geoname_id,
      :continent_code => :continent_code,
      :continent_name => :continent_name,
      :country_iso_code => :country_iso_code,
      :country_name => :country_name,
      :subdivision_iso_code => :subdivision_iso_code,
      :subdivision_name => :subdivision_name,
      :city_name => :city_name,
      :time_zone => :time_zone,
    }}) do |location|
      Location.create(location)
    end
  end
end
