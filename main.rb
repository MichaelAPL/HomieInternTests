require './test_one'

class Main
  puts 'Test One:'
  test_one = TestOne.new
  cars_array = test_one.run_test
  puts cars_array

end
