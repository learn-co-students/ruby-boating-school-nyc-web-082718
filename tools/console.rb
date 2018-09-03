require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

b1= BoatingTest.new(spongebob, "Test 1", "passed", puff)
b2= BoatingTest.new(patrick, "Test 1", "failed", krabs)
b3= BoatingTest.new(spongebob, "Test 2", "failed", krabs)
b4= BoatingTest.new(patrick, "Test 2", "passed", puff)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
