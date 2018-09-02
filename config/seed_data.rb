require_relative '../app/models/boatingtest'
require_relative '../app/models/instructor'
require_relative '../app/models/student'
require 'pry'


spongebob= Student.new("Spongebob")

patrick = Student.new("Patrick")

puff= Instructor.new("Ms.Puff")

krabs = Instructor.new("Mr.Krabs")

test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)

bob = Student.new("Bob")

rick = Student.new("Rick")

steve = Instructor.new("Mr. Steve")

al= Instructor.new("Al")

test2 = bob.add_boating_test("Crash Report", "pending", steve)
