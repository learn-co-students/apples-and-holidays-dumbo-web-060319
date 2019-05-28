require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas].push(supply)
holiday_hash[:winter][:new_years].push(supply)
  

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end
def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end


def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday, activities|
      x = holiday.to_s.split("").map { |x| x == "_" ? x = " " : x }.join
      z = x.split.each { |y| y.capitalize! }.join(" ")
      puts "  #{z}: #{activities.join(", ")}"
    end  
  end
end

def all_holidays_with_bbq(holiday_hash)
  x = []
  holiday_hash.each do |season, holiday|
    holiday.each do | holiday, activities|
      activities. each do |activity| 
        if activity == "BBQ"
          x << holiday
        end
      end
    end
  end
  x
end


