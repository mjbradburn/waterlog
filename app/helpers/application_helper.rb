module ApplicationHelper

  def season_text(i)
    season_hash = {0=>"Spring Overturn", 1=>"Late Summer"}
    season_hash[i]
  end

  def weather_text(i)
    weather_hash = {1=>"Sunny", 2=>"Partly Cloudy", 3=>"Overcast",
      4=>"Foggy", 5=>"Rainy"}
      weather_hash[i]
    end

  def bootstrap_class_for flash_type
    case flash_type
    when :success
      "alert-success"
    when :error
      "alert-error"
    when :alert
      "alert-block"
    when :notice
      "alert-info"
    else
      flash_type.to_s
    end
  end

  end
