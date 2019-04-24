require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |array|
    if array["status"] == "Winner"
      return array["name"].split.first
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |information|
      information.each do |key, value|
        if value == occupation
          return information["name"]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |information|
      if information["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |information|
      if information["hometown"] == hometown
        return information["occupation"]
      end
    end
  end
end



def get_average_age_for_season(data, season)
  age = 0
  counter= 0
  data[season].each do |array|
      array.each do |key, value|
        counter += 1 #increase the count in each season
        age += array["age"].to_f #get the value of the age and add the ages of every season and turn them into floor value so we can devide decimal number
      end
  end
  (age/counter).round #average = age/count and round the number
end
