require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] = "winner".downcase
      return contestants["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |key, value|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |key, value|
      if key["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |key, value|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  number_of_contestants = 0
  data[season].each do |contestants|
    total_age += (contestants["age"]).to_i
    number_of_contestants += 1
  end
  (total_age / number_of_contestants.to_f).round
end
