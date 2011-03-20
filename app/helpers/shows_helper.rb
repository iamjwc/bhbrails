module ShowsHelper
  def month_for(d)
    d ||= Time.now
    d.strftime("%b")
  end

  def time_for(d)
    d ||= Time.now

    if d.min == 0
      d.strftime "%l%p"
    else
      d.strftime "%l:%M%p"
    end
  end
end
