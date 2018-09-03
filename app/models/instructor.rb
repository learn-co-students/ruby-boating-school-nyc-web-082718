require "pry"

# init with name
# * return all instructors
# * Instructor.pass_student should take in a student name and test name and return status failed
# * Instructor.fail_student should take in a student name and test name and return status failed
# * Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed



class Instructor

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    BoatingTest.all.each do |bt_obj|
      if bt_obj.student.name == student_name && bt_obj.test_name == test_name
        return "passed"
      end
    end
  end

  def self.fail_student(student_name, test_name)
    BoatingTest.all.each do |bt_obj|
      if bt_obj.student.name == student_name && bt_obj.test_name == test_name
        return "failed"
      end
    end
  end

  def self.student_grade_percentage(student_name)
    total_arr = []
    passed_arr = []
    BoatingTest.all.each do |bt_obj|
      if bt_obj.student.name == student_name
        total_arr << bt_obj.test_name
      if bt_obj.test_status == "passed"
        passed_arr << bt_obj.test_status
      end
    end
  end
    return (passed_arr.length)/(total_arr.length).to_f
  end

end


# i1 = Instructor.new("Steve")
# i2 = Instructor.new("Joe")
# i3 = Instructor.new("Mary")
