def get_first_name_of_season_winner(data, season)
    #season = season.to_sym
    #ruby to json -> :status to "status" / :name to "name"
    
    winner_name = ""
    data[season].each do |k,v|
      if k["status"] == "Winner"
        winner_name = k["name"]
      end 
    end 
  
    winner_name.split(" ").first
end

def get_contestant_name(data, occupation)

  contestant_name = ""
  
    data.each do |season, array|
    array.each do |key, value|
      if key["occupation"] == occupation
        contestant_name = key["name"]
      end 
    end 
  end 
  
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  count = []
  data.each do |season, array|
    array.each do |key, value|
      if key["hometown"] == hometown
        count << true
      end 
    end 
  end 
  count.length 
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |key, value|
      if key["hometown"] == hometown
        return key["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  #get list of ages for season 
  #avg out the list of ages
  #properly round the avg
  #return the rounded avg
  
  #season = season.to_sym
  ages = []
  data[season].each do |key, value|
    ages << key["age"].to_f
  end 

  i = 0 
  ages_sum = 0
  while i < ages.length do 
    ages_sum += ages[i]
    i+=1
  end 
  avg_age = (ages_sum / ages.length).round
  
end
