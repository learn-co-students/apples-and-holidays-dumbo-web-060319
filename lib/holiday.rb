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
 holiday_hash[:winter].each do |k,v|
  v << "Balloons"
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
  

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  hash={holiday_name=>supply_array}
  holiday_hash[season]=hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr=[]
  holiday_hash[:winter].each do |k,v|
  arr+=v
  end
arr
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |k,v|
    puts "#{k[0].upcase}#{k[1..-1]}:"
    v.each do |k2,v2|
      word=k2[0].upcase+k2[1..-1]
      arr=word.split("_")
      arr.map {|word| word[0]=word[0].upcase} if arr.length >1
      word=arr.join(" ")
      puts "  #{word}: #{v2.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  result=[]
holiday_hash.each do |k1,v1|
  v1.each do |k2,v2|
    result << k2 if v2.include?("BBQ")
  end
end
result
end







