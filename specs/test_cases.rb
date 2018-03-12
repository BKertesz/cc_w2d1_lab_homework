require("minitest/autorun")
require_relative("../homework_w2_d1.rb")

class TestClassCases < Minitest::Test
  def setup()
    @student = Student.new('Balazs',20)
    @team = Team.new("Pandas",["Bob","Tom","Rob"],"John")
    @library = Library.new()
  end

  def test_get_student_details()
    result_one = @student.get_name()
    result_two = @student.get_cohort()
    assert_equal("Balazs",result_one)
    assert_equal(20,result_two)
  end

  def test_set_student_details()
    @student.set_name("Todd")
    @student.set_cohort(100)

    result_one = @student.get_name()
    result_two = @student.get_cohort()
    assert_equal("Todd",result_one)
    assert_equal(100,result_two)
  end

  def test_talk_method()
    result = @student.talk()
    assert_equal("I can talk!",result)
  end

  def test_favorite_language()
    result = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby",result)
  end

end


# EOF
