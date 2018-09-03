require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Spongebob")
s2 = Student.new("Patrick")
i1 = Instructor.new("Ms.Puff")
i2 = Instructor.new("Mr.Krabs")
i3 = Instructor.new("Squidward")
t1 = s1.add_boating_test("Don't Crash 101", "pending", i1)
t2 = s2.add_boating_test("Test 1", "pending", i2)
s1.add_boating_test("Test 2", "pending", i3)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
