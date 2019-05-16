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
  holiday_hash[:winter].each do |key, val|
    val << supply
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end

  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    # Season
    puts "#{season.capitalize}:"

    #  for each holiday
    holiday.each do |holiday_name, supplies|
      # We'll concatenate this string based on the place of the supplies in the array
      supply_list = ""

      # Check for the place of each supply
      supplies.each do |party_favor|
        # If it's not the first item in the array
        if party_favor != supplies.first
          # add a comma and space before it
          supply_list += ", #{party_favor}"
        else
          # otherwise, just add the string
          supply_list += "#{party_favor}"
        end
      end

      # Turn our symbol into a string
      holiday_name_str = "#{holiday_name}"

      # If the string has an underscore
      if holiday_name_str.include?("_")
        # Remove the underscores and turn it into an array
        holiday_name_arr = holiday_name_str.split("_")
        # capitalize each word
        holiday_name_arr.each do |day|  
          day.capitalize! 
        end
        # turn the array into one string ith a space inbetween
        holiday_name_str = holiday_name_arr.join(" ")
        # print the holiday name with the appropriate supplies
        puts "  #{holiday_name_str}: #{supply_list}"
      else 
        puts "  #{holiday_name_str.capitalize}: #{supply_list}"
      end
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  # initialize an empty array to store the holiday names.
  turnt_holidays = []

  # for each season
  holiday_hash.each do |season, holiday|
    # check each holiday
    holiday.each do |day, supplies|
      # If "BBQ" is in their supply list
      if supplies.include?("BBQ")
        # push the holiday into the array
        turnt_holidays << day
      end
    end
  end

  # mutate the array with flatten - the bang will make it permanent
  turnt_holidays.flatten!
  # the following line isn't necessary, either way will return our array
  turnt_holidays
end







