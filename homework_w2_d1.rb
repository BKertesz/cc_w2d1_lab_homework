# Homework Week 2 Day 1
# Start of Part 1
class Student
  def initialize(student_name,cohort)
    @name = student_name
    @cohort = cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    return @name = new_name
  end

  def set_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def talk()
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end
end
# End of Part 1
# Testing for Part 1
# balazs = Student.new("Balazs",20)
# balazs.set_name("Todd")
# balazs.set_cohort(100)
# p balazs.get_name
# p balazs.get_cohort
# p balazs.talk()
# p balazs.say_favourite_language("Python")


# Start of Part 2
class Team
  attr_reader :team_name, :players, :points
  attr_accessor :coach
  def initialize(team_name,players,coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(new_player)
    return players.push(new_player)
  end

  def check_if_player(player_name)
    for name in @players
      return true if name == player_name
    end
  end

  def update_score(match_info)
    return @points += 1 if match_info == "won"
  end


end
# End of Part 2
# Test code for part 2
# football = Team.new('Chipmunks',['Bob','Rob','Tim'],'John')
# football.add_new_player('Todd')
# p football.players
# p football.check_if_player('Bob')
# football.update_score("won")
# p football.points
#

# Start of Extension
class Library
  attr_reader :books
  def initialize()
    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }
    ]
  end

  def check_book_info_by_title(title)
    for book in @books
      return book if book[:title] == title
    end
  end

  def check_rental_information(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_new_book(title)
    array = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(array)
  end

  def update_book_info(title,student,date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
      end
    end
  end
end
# End of Extension

# Test code Below
# libary = Library.new()
# p libary.check_book_info_by_title("lord_of_the_rings")
# p libary.books
# libary.add_new_book("Alice in Wonderland")
# # p libary.books
# libary.update_book_info("Alice in Wonderland",'Jimbo','02/09/1992')
# p libary.books

# EOF
