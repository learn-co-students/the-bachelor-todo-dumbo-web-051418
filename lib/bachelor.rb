def get_first_name_of_season_winner(data, season)
  # code here
  season_winner = nil
  #iterate through season, then compare status
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      season_winner = contestants["name"].split(" ")[0]
    end
  end
  return season_winner
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = nil
  data.each do |season, contestants| #contestants is an array
    contestants.each do |stats|
      if stats["occupation"] == occupation
        contestant_name = stats["name"]
      end
    end
  end
  return contestant_name
end

def count_contestants_by_hometown(data, hometown)
   # code here
  counter = 0
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end


def get_occupation(data, hometown)
  # code here
  data.keys.each do |season|
    data[season].each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  #get number of contestants in season
  count = data[season].size
  #get total age of season contestants
  total_age = 0
  data[season].each do |stats|
    total_age += stats["age"].to_i
  end
  #return average age of season
  return (total_age / count).ceil 
end
