class Timer

  SECONDS_IN_HOUR = 3600
  SECONDS_IN_MINUTE = 60
  attr_reader :seconds, :minutes, :hours

  def initialize(seconds = 0)
    @seconds = seconds # this works
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    @hours = seconds / SECONDS_IN_HOUR
    @minutes = seconds % SECONDS_IN_HOUR / SECONDS_IN_MINUTE
    @seconds = seconds % SECONDS_IN_MINUTE
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(num)
    if num < 10
    "0#{num}"
    else
     "#{num}" 
    end
  end
end 