class ShowsController < ApplicationController
  def new
    @show = Show.new
  end

  def create
    @show = Show.create(params[:show])

    redirect_to '/edit'
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])

    @show.attributes = params[:show]
    @show.save

    redirect_to '/edit'
  end
end
