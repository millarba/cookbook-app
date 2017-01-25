class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_updated_at
    updated_at.strftime('%b %e, %Y')
  end

  def friendly_prep_time
    hours = prep_time/60
    minutes = prep_time%60

    time_message = ""
    time_message += "#{hours} Hours" if hours > 0
    time_message += ", " if hours > 0 && minutes > 0
    time_message += "#{minutes} #{"Minutem".pluralize(minutes)}" if minutes > 0
    time_message
  end
end
