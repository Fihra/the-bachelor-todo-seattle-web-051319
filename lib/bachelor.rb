require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  name = " "
  data[season].each do |k, v|
    if k["status"] == "Winner"
      return k["name"].split(' ')[0]
    end
  end


end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info|
    info.each do |k|
      if k["occupation"] == occupation
        return k["name"]
      end
      #binding.pry
    end
  end
  #binding.pry
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, info|
    info.each do |k|
      if k["hometown"] == hometown
        count += 1
      end
    #binding.pry
    end
  end
  return count
  #binding.pry
end

def get_occupation(data, hometown)
  contestant = nil
  data.each do |season, info|
    info.each do |k|
      if k["hometown"] == hometown
        contestant = k["occupation"]
        break
        #binding.pry
      end
    end
  end
  return contestant
  # code here
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data.each do |seasonNum, contestant|
    if seasonNum == season
      contestant.each do |k|
        age_array << k["age"].to_f
      end
    end
  end
  total = 0
  age_array.each {|i|
    total += i
  }
  total = total/age_array.length
  total.to_i.ceil
  return total
  #binding.pry
end
