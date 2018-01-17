class User < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      formatted_row = row.each_with_object({}) do  |(key,value), hash|
        hash[key.downcase] = value
      end

      User.create!(formatted_row).inspect
    end
  end

end
