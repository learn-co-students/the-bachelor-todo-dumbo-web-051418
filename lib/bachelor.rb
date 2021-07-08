require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
      if contestant_hash["status"] == "Winner"
        return contestant_hash["name"].split(" ").first
  end
 end
end


def get_contestant_name(data, occupation)
 data.each do |key, value|
   value.each do |key|
    if key["occupation"] == occupation
      return key["name"]
    end
   end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |hash|
      if hash["hometown"] == hometown
         counter +=1 
      end 
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each  do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season) ### get help with this method
  contestant_count = 0 
  ages_summed = 0 
  
  data.each do |key, value|
    value.each do |hash|
      for i in hash.keys
      ages_summed += hash["age"].to_i
      contestant_count += 1
      end
    end
  end
  return ages_summed / contestant_count
end
