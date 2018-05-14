def get_first_name_of_season_winner(data, season)
  new_name = ""

  data[season].each do |bachelor_hash|
    if bachelor_hash["status"] == "Winner"
      new_name = bachelor_hash["name"].split(" ").first
    end
  end
  new_name
end

def get_contestant_name(data, occupation)
  new_contest = ""
  data.each do |season, bachelor_hash|
    bachelor_hash.each do |bachelor|
      if bachelor["occupation"] == occupation
        new_contest = bachelor["name"]
      end
    end
  end
  new_contest
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, bachelor_hash|
    bachelor_hash.each do |bachelor|
      if bachelor["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  job = ""
  data.each do |season, bachelor_hash|
    bachelor_hash.find do |bachelor|
      if bachelor["hometown"] == hometown
        job = bachelor["occupation"]
      end
    end
  end
  job
end

def average_list(list)
  numerator = list.inject(0) {|sum, i|  sum + i }
  denominator = list.size.to_f
  average = (numerator / denominator).round(0)

  average
end

def get_average_age_for_season(data, season)
  a_age = []

  data[season].each do |bachelor_hash|
    a_age.push(bachelor_hash["age"].to_i)
    end
  average_list(a_age)
end
