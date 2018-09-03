require 'bundler/setup'
Bundler.require
require_all 'app'
require 'pry'

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

test1 = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2 = patrick.add_boating_test("Don't Crash 101", "passed", puff)
test3 = spongebob.add_boating_test("Don't Crash 202", "passed", puff)
test4 = patrick.add_boating_test("Don't Crash 202", "passed", puff)

binding.pry
