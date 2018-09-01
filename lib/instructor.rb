class Instructor

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    BoatingTest.all.each do |test|
      # test.student.first_name gives you student first name
      # test.test_name gives you the test name
      # test.test_status gives you status

      if test.student.first_name == student_name && test.test_name == test_name
        return test.test_status = 'passed'
      end
      #binding.pry
    end
  end

  def self.fail_student(student_name, test_name)
    BoatingTest.all.each do |test|
      # same as above but with fail instead of pass

      if test.student.first_name == student_name && test.test_name == test_name
        return test.test_status = 'failed'
      end
    end
  end

  def self.student_grade_percentage(first_name)
    #outputs percentage of tests that they have passed
    testtaken = 0
    testpassed = 0
    BoatingTest.all.each do |test|
      # test.student.first_name gives you student first name
      # test.test_status gives you status
      if test.student.first_name == first_name
        if test.test_status == 'passed'
          testpassed += 1.0
          testtaken += 1.0
        elsif test.test_status == 'failed'
          testtaken += 1.0
        else
          nil
        end
      end # end student name if
    end #end loop
    gpa = testpassed / testtaken
    return gpa
  end

end

#Instructor.pass_student should take in a student name and test name and return status passed

#Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed
