
def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

#require 'pry'

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, decorations|
    decorations << supply
end
holiday_hash

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, decorations|
    decorations << supply

  end
holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
#binding.pry
end

#require 'pry'
def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
 holiday_hash[:winter].collect.each do |holiday, supply|
   supply
   
#binding.pry
end.flatten
end

#require 'pry'
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
puts season.to_s.capitalize + ":"
 holiday.each do |holiday, decorations|
  h = holiday.to_s.split("_").map {|word|word.capitalize}.join(" ") + ": "
  s = decorations.join(", ")
  puts "  "  + h + s
  
    end
  end
end
require 'pry'
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
   holiday_hash.each do |season, holiday|
    holiday.each do |event, decorations|
    if decorations.include?("BBQ")
      new_array << event
    
  #binding.pry    
      
end
end
end
new_array
end



