require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each {|season,holiday|
    if(season == :winter)
      holiday.each {|value,supplies|
        supplies.each {|supply|
          winter_supplies << supply
        }
      }
    end
  }
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each { |season,holiday|
    puts "#{season.to_s.capitalize}:".chomp
    holiday.each {|value,supplies|
      puts "  #{value.to_s.split("_").map(&:capitalize).join(' ')}: #{supplies.join(", ")}".chomp
    }
  }
end

def all_holidays_with_bbq(holiday_hash)

holidays_with_bbqs = []

  holiday_hash.each {|season,holiday|
      holiday.each {|value,supplies|
        if(supplies.include?("BBQ"))
          holidays_with_bbqs << value
        end
      }
  }
  holidays_with_bbqs

end
