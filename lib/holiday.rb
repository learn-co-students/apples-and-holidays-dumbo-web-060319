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
  a=holiday_hash.keys
  a=a[1]
  b=holiday_hash[a].values
  b=b[0][1]
  return b
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |k,v|
    if k == :winter 
      v.each do |attribute, value|
        if attribute == :christmas
          value.push(supply)
        end 
        if attribute == :new_years
          value.push(supply)
        end
      end
    end
  end
end 


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |k,v|
    if k == :spring 
      v.each do |att,val|
        val.push(supply)
      end 
    end 
  end 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  array_to_be_added = supply_array 
  
  holiday_hash.each do |k,v|
    if k == season 
      holiday_hash[k][holiday_name]=supply_array
    end 
  end 

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  finalArray=[]
  holiday_hash.each do |k,v|
    if k == :winter 
      v.each do |att,val|
        counter = 0 
        while (counter < val.length)
          finalArray.push(val[counter])
          counter = counter + 1 
        end 
      end 
    end 
  end 
  
  return finalArray

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
    puts "#{k.capitalize}:"
    v.each do |attribute, value|
      wholeSentence=""
      z=attribute.to_s 
      z=z.split('_')
      newAr=[]
      counter3=0
      while (counter3 < z.length)
        t=z[counter3].capitalize
        newAr.push(t)
        counter3= counter3+1 
      end 
      tempWord = newAr.join(" ")
      wholeSentence = wholeSentence + "  #{tempWord}:"
      counter = 0 
      while (counter < value.length)
        if (counter == value.length-1)
          wholeSentence = wholeSentence + " #{value[counter]}"
          break 
        end 
        wholeSentence = wholeSentence + " #{value[counter]},"
        counter = counter + 1 
      end 
      puts wholeSentence
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  finalArr=[]
  
  holiday_hash.each do |k,v|
    v.each do |at,val|
      counter=0 
      while (counter < val.length)
        if val[counter] == "BBQ"
          finalArr.push(at)
        end 
        counter = counter + 1 
      end 
    end 
  end
  return finalArr
end







