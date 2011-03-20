
class Show < ActiveRecord::Base
  BUFFER = 5

  validates_presence_of :play_at

  scope :upcoming, lambda { where('play_at > ?',   BUFFER.hours.from_now) }
  scope :previous, lambda { where('play_at <= ?',  BUFFER.hours.from_now) }
end

