
class HomeController < ApplicationController

  def index
    @shows = Show.upcoming
    @new_show = Show.new
    @contact = Contact.new
  end

end

