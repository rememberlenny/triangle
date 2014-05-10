class Location < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Location.create! row.to_hash
    end
  end
end
