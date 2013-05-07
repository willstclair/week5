class TheatersController < ApplicationController

  def destroy
    n = Theater.find_by_id(params[:id])
    n.destroy
    redirect_to "/theaters"
  end

  def edit
    @theater = Theater.find_by_id(params[:id])
  end

  def update
    @theater = Theater.find_by_id(params[:id])
    @theater.name = params[:name]
    @theater.address = params[:address]
    @theater.save
    redirect_to "/theaters"
  end

  def create
    @theater = Theater.new
    @theater.name = params[:name]
    @theater.address = params[:address]

    if @theater.save
      redirect_to "/theaters"
    else
      render 'new'
    end
  end

  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find_by_id(params[:id])
  end

  def new
    @theater = Theater.new
  end

end
