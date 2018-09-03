require_relative '../config/environment.rb'
require_relative '../app/models/boatingtest.rb'
require_relative '../app/models/instructor.rb'
require_relative '../app/models/student.rb'


def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

test1 = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2 = spongebob.add_boating_test("Don't Die 102", "pending", krabs)

Instructor.pass_student("Spongebob", "Don't Die 102")
Instructor.fail_student("Spongebob", "Don't Crash 101")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
