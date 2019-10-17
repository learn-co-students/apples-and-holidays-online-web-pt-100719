require 'pry'

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

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  # holiday_hash[:winter][:christmas][-1]=supply
  # holiday_hash[:winter][:new_years][-1]=supply
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each {|holiday, supplies| supplies << supply}
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day].push(supply) 
  #|| holiday_hash[:spring][:memorial_day].push("Table Cloth")
  #holiday_hash.each do | season, holiday|
   # if holiday == :memorial_day
    #  :memorial_day[-1](supply)
    #end
  #holiday_hash
  #nd
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, holidays|
    # seasons and holidays because these iteration includes all the seasons and all the holidays
    if seasons == season
    # we are inside of holidays = {:thanksgiving=>["Turkey"]}
      holidays[holiday_name]= supply_array
    # we add a new pair with the variables provided by the test
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.map do |seasons, holidays|
    if seasons == :winter
      holidays.map do |holiday, supplies| 
        winter_supplies << supplies
      end
    end
  end
  winter_supplies.join(",")
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays_and_supplies|
    # enter the array to the first level so seasons is iterating the season symbols and holidays over the hashes containing different holidays and their supplies
    puts "#{seasons.to_s.capitalize}:"
    # prints out what was a seasons symbol as a capitalized string and :
      holidays_and_supplies.each do |holiday, supply|
        # enter the array to the second level so holiday is each holiday symbol and supply the array of supplies
        if holiday.to_s.include?("_") == false
          # the underscore is an indication of two words in the symbol. We need to capitalize these two words in each holiday.
          puts "  #{holiday.to_s.capitalize}: #{supply.join(", ")}"
          # holiday symbol is turned into a string and capitalized when there is only one word in the symbol then the supply array is converted into a string and each element separated by a comma
        else
          split_holiday = holiday.to_s.split("_").join(" ").split(" ")
          #if the holiday symbol contains a underscore we turn it into a string then split it at the underscre then turn this array into a string separated by spaces and then split the string into an array again 
            split_holiday.map {|word| word.capitalize!}
            # we have an array with each word of the holiday e.g. [new, years] and we iterate over each word using a capitalize with a bang to change it permanently
          puts "  #{split_holiday.join(" ")}: #{supply.join(", ")}"
          # finnaly we print the multiword holiday array after converting it to a string with .join and separate the elements with a space
        end
        # binding.pry
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays= []
  holiday_hash.map do |seasons, holidays|
    holidays.map do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
  # added a new array to take in the holidays that returned true when tested for "BBQ"
end







