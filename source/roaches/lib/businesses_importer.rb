require_relative '../app/models/business'
require 'csv'
require 'iconv'

module BusinessesImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/businesses_plus.csv")
    field_names = nil
    Business.transaction do
      File.open(filename).each do |line|
        ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
        valid_line = ic.iconv(line)
        data = valid_line.chomp.split(',')
        data.each do |string|
          string.gsub!('["]',"")
        end
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          business = Business.create!(attribute_hash)
        end
      end
    end
  end
end
