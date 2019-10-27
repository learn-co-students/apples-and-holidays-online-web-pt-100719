require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas]<< supply
  holiday_supplies[:winter][:new_years]<< supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holidays| 
   puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
     puts "  #{holiday.to_s.split('_').map{|w| w.capitalize}.join(' ')}: #{supplies.join(", ")}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  new_array =[] 
   holiday_supplies.each do |season, _holiday_hash|
    _holiday_hash.each do|holiday_name, supplies_array|
      supplies_array.each do |supply|
       if supply == "BBQ"
       new_array << holiday_name
        end
      end 
    end   
  end 
  new_array
end
