#require_relative '../config/environment.rb'
require 'pry'
require_relative '../lib/student.rb'
require_relative '../lib/instructor.rb'
require_relative '../lib/boatingtest.rb'


def reload
  load 'config/environment.rb'
end
#
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new('Maria')
s2 = Student.new('Pat')
s3 = Student.new('Joe')
i1 = Instructor.new('Instructor Bon')
i2 = Instructor.new('Instructor Nam')
i3 = Instructor.new('Instructor Mao')

test1 = s1.add_boating_test("Don't Crash 101", "pending", i2)
test2 = s1.add_boating_test("Crash 101", "pending", i1)
test3 = s2.add_boating_test("test3", "pending", i3)
#add_boating_test(test_name, test_status, instructor)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
