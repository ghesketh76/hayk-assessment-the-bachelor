require 'pry'
require 'json'

# def contestant_helper (data, search, input)
#   data.values.flatten.find do |indv_data|
#     indv_data[search] == input
#   end
# end

def get_first_name_of_season_winner(data, season)
  winner = data[season].find do |indv_data|
    indv_data["status"] == "Winner"
  end
  winner["name"].split.first
end

# def get_contestant_name (data, occupation)
#   found_job = contestant_helper (data, "occupation", occupation )
#   found_job["name"]
# end

def get_contestant_name(data, occupation)  
   found_job = data.values.flatten.find do |indv_data|
    indv_data["occupation"] == occupation
   end
found_job["name"]
end

def get_occupation(data, hometown)
  first_job = data.values.flatten.find do |indv_data|
    indv_data["hometown"] == hometown
  end
  first_job["occupation"]
end


def count_contestants_by_hometown(data, hometown)
  hometown_count = data.values.flatten.filter do |indv_data|
    indv_data["hometown"] == hometown
  end
  hometown_count.count
end



def get_average_age_for_season(data, season)
  age_array = data[season].map do |indv_data|
    indv_data["age"].to_f
  end
  average_age = (age_array.sum / age_array.count).round
end





#def get_average_age_for_season(data,season)
  # age_array = []
  # data.each do |seasons, contestants|
  #   if seasons == season
  #     contestants.each do |indv_data|
  #       age_array << indv_data["age"].to_f 
  #     end
  #   end
  # end
  # average_age = (age_array.inject{|sum,el| sum + el }.to_f / age_array.size).round
#end

# def get_occupation(data, hometown)
#    data.each do |seasons, contestants|
#     contestants.each do |indv_data|
#       if indv_data["hometown"] == hometown
#         return indv_data["occupation"]
#       end
#     end
#   end
# end

# def count_contestants_by_hometown(data, hometown)
#   counter = 0
#   data.each do |seasons, contestants|
#     contestants.each do |indv_data|
#       if indv_data["hometown"] == hometown
#         counter += 1
#       end
#     end
#   end
#   counter
# end


# def get_contestant_name(data, occupation)  
#   job = data.each do |seasons, contestants|
#      contestants.find do |indv_data|
#       indv_data["occupation"] == occupation
#     end
#   end
#   job["name"]
# end