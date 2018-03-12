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
  end

  def add_new_player(new_player)
    return players.push(new_player)
  end
end
# End of Part 2

# EOF
