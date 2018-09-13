require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Ollie")
s2 = Student.new("Josh")
s3 = Student.new("Eddie")
s4 = Student.new("Adrienne")

i1 = Instructor.new("Alex")
i2 = Instructor.new("Johnny")
i3 = Instructor.new("Summer")
i4 = Instructor.new("Magda")

t1 = BoatingTest.new(s1, "Tacking", "Pass", i1)
t2 = BoatingTest.new(s2, "Sailing", "Pass", i1)
t3 = BoatingTest.new(s1, "Sailing", "Pass", i2)
t4 = BoatingTest.new(s3, "Jibing", "Fail", i3)
t5 = BoatingTest.new(s1, "Rowing", "Pass", i3)
t6 = BoatingTest.new(s1, "Jibing", "Fail", i4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
