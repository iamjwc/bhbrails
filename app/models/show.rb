
class Show < ActiveRecord::Base
  BUFFER = 5

  scope :upcoming, lambda { where('play_at <= ?', BUFFER.hours.from_now) }
  scope :previous, lambda { where('play_at > ?',  BUFFER.hours.from_now) }

  def month
    d = play_at || Time.now
    d.month.to_s
  end

  def day
    d = play_at || Time.now
    d.day.to_s
  end

  def time
    d = play_at || Time.now
    if d.min == 0
      d.strftime "%H%p"
    else
      d.strftime "%H:%M%p"
    end
  end
end

