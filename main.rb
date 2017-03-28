require './test_one'
require './test_two'
require './test_three'

class Main
  puts 'Test One:'
  test_one = TestOne.new
  cars_array = test_one.run_test
  puts cars_array
  
end
