def get_first_name_of_season_winner(data, season)
  data.each do |season_number, season_data| 
    if season_number == season 
      season_data.each do |person|
        person.each do |condition, value| 
          if value == "Winner" 
            return person["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, season_data| 
    season_data.each do |person|
      person.each do |condition, value| 
          if condition == "occupation" && value == occupation 
            return person["name"]
          end
        end
      end
    end
  end
  

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, season_data| 
    season_data.each do |person|
      person.each do |condition, value| 
          if condition == "hometown" && value == hometown
            counter += 1
          end
        end
      end
    end
    counter
end

def get_occupation(data, hometown)
  data.each do |season_number, season_data| 
    season_data.each do |person|
      person.each do |condition, value| 
          if condition == "hometown" && value == hometown
            return person["occupation"]
          end
        end
      end
    end
end

def get_average_age_for_season(data, season)
  total_age = 0 
  total_people = 0 
  data.each do |season_number, season_data| 
    if season_number == season 
      season_data.each do |person|
        total_age += person["age"].to_f
        total_people += 1
      end
    end
  end
  (0.5 + total_age/total_people).floor 
end
