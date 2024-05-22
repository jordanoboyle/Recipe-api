class Recipe < ApplicationRecord

  def pretty_time
    hours = prep_time / 60
    minutes = prep_time % 60
    
    if hours == 0
      return "Prep time is: #{minutes} minutes"
    elsif hours == 1
      return "Prep time is: #{hours} hour #{minutes} minutes"    
    else
      return "Prep time is: #{hours} hours #{minutes} minutes"
    end
  end
  
end
