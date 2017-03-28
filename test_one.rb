# The DataGenerator class has a CAR_DATA constant that is an Array of OpenStruct objects.
# Each OpenStruct object has two properties:
#   manufacturer: A car manufacturer.
#   models: An array of car models.
#
# Implement the run_test method to generate an array of all possible cars.
# Each array item should be a string in the form "manufacturer: model"
#   Example:
#   [ "Toyota: Camry", "Dodge: Durango", ... ]

require_relative 'lib/data_generator'

class TestOne

  CAR_DATA = DataGenerator::CAR_DATA

  def run_test
    cars_array = []

    CAR_DATA.each do |struct|
      manufacturer_string = struct[:manufacturer].to_s
      models = struct[:models]

      models.each do |model|
        cars_array << "#{manufacturer_string}: #{model.to_s}"
      end
    end

    cars_array
  end

end
