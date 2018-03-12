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

# Start of Part 2
class Team
  attr_reader :team_name, :players
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
        book[:rental_details][:date] = data
      end
    end
  end
end
# End of Extension

# EOF