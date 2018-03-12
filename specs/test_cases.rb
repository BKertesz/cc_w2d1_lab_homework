require("minitest/autorun")
require_relative("../homework_w2_d1.rb")

class TestClassCases < Minitest::Test
  def setup()
    @student = Student.new('Balazs',20)
    @team = Team.new("Pandas",["Bob","Tom","Rob"],"John")
    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }
    ]
    @library = Library.new(@books[0])
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

  def test_team_getters()
    assert_equal("Pandas",@team.team_name)
    assert_equal(["Bob","Tom","Rob"],@team.players)
    assert_equal("John",@team.coach)
  end

  def test_coach_setter()
    @team.coach= "Jack"
    assert_equal("Jack",@team.coach)
  end

  def test_add_new_player()
    @team.add_new_player("Todd")
    assert_equal(["Bob","Tom","Rob","Todd"],@team.players)
  end

  def test_if_player_in_team()
    assert_equal(true,@team.check_if_player("Bob"))
  end

  def test_if_team_has_zero_points()
    assert_equal(0,@team.points)
  end

  def test_score_updater()
    @team.update_points("won")
    assert_equal(1,@team.points)
  end

  def test_books_getter()
    assert_equal(@books,@library.books)
  end

  def test_book_info_by_title()
    assert_equal(@books[0],@library.check_book_info_by_title("lord_of_the_rings"))
  end

  def test_check_rental_information
    assert_equal(@books[0][:rental_details],@library.check_rental_information("lord_of_the_rings"))
  end

  def test_add_new_book
    @books[1] = {
      title:"alice_in_wonderland",
      rental_details:{
        student_name:"",
        date:""
      }
    }
    @library.add_new_book("alice_in_wonderland")
    assert_equal(@books[1],@library.books[1])
  end

  def test_update_book_info
    @books[0] = {
      title:"lord_of_the_rings",
      rental_details:{
        student_name:"John",
        date:"01/01/1970",
      }
    }
    @library.update_book_info("lord_of_the_rings","John","01/01/1970")
    assert_equal(@books[0],@library.books[0])
  end

end


# EOF
