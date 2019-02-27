require 'pry'
  # code here
def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each {|contestants|
    if contestants["status"] == "Winner"
      winner = contestants["name"]
    end
    }
  return winner.split[0]
end

def get_contestant_name(data, occupation)
name = nil
  data.each {|season, contestants|
    data[season].each {|info|
      if info["occupation"] == occupation
        name = info["name"]
      end
      }
    }
  return name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each {|season, contestants|
    data[season].each {|info|
      if info["hometown"] == hometown
        counter += 1
      end
        }
      }
    return counter
end

def get_occupation(data, hometown)
  answer = nil
  data.each {|season, contestants|
  data[season].find {|info|
    if info["hometown"] == hometown
      answer = info["occupation"]
      end
        }
      }
    return answer
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each {|info|
    ages << info["age"].to_i
    }
    answer = (ages.reduce(:+) / (ages.length).to_f).round
    return answer
end
