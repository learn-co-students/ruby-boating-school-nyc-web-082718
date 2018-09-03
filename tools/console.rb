require "pry"

require_relative '../config/environment.rb'
# require_relative '../ruby-boating-school-nyc-web-082718/app/models/boatingtest.rb'
# require_relative '../ruby-boating-school-nyc-web-082718/app/models/instructor.rb'
# require_relative '../ruby-boating-school-nyc-web-082718/app/models/student.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

i1 = Instructor.new("Steve")
i2 = Instructor.new("Joe")
i3 = Instructor.new("Mary")

s1 = Student.new("Bobby")
s2 = Student.new("Kiki")
s3 = Student.new("Drake")

bt1 = BoatingTest.new(s1, "floating", "passed", i2)
bt2 = BoatingTest.new(s3, "turning", "failed", i2)
bt3 = BoatingTest.new(s2, "speeding", "passed", i3)
bt4 = BoatingTest.new(s2, "traffic", "failed", i1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
