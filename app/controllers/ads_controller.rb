class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(params[:ad])
    if @ad.save
    redirect_to @ad, :notice => "Successfully created ad."
    else
    render :action => 'new'
    end
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(params[:ad])
    redirect_to @ad, :notice  => "Successfully updated ad."
    else
    render :action => 'edit'
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to ads_url, :notice => "Successfully destroyed ad."
  end
end
