require_relative '../app/models/business'

module BusinessesImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/businesses_plus.csv")
    field_names = nil
    Business.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          student = Student.create!(attribute_hash)
        end
      end
    end
  end
end