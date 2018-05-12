require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |facts|
      if facts["status"] == "Winner"
        return facts["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, stats|
    data[season].each do |facts|
      if facts["occupation"] == occupation
        return facts["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, stats|
    stats.each do |facts|
      if facts["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  num_of_ppl = 0
  total_ages = 0
  data[season].each do |contestants|
        total_ages += contestants["age"].to_i
        num_of_ppl += 1
  end
    (total_ages.to_f / num_of_ppl).round
end
