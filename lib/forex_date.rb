require "forex_date/version"

module ForexDate

  require 'tzinfo'

  def ForexDate.today
    t = Time.now.in_time_zone("Eastern Time (US & Canada)")
    date = t.to_date
    date += 1.day if t.hour >= 17
    return ( date.wday == 6 || date.wday == 7 ) ? nil : date
  end

end
