my_hash = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

def example_nest(hash)
    hash.collect do |season, holidays|
        holidays.collect do |holiday, supplies|
            if supplies.include?("BBQ")
                supplies
            else 
                continue
            end
        
        end
    end
end

puts example_nest(my_hash)