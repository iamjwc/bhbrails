
class HomeController < ApplicationController

  def index
    @shows = Show.upcoming
    @new_show = Show.new
    @contact = Contact.new
  end

  def edit
    @edit = true

    index
    render :index
  end

end

