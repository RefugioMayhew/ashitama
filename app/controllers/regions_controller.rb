class RegionsController < ApplicationController
  def index
    @region = Region.all
  end

  def show
    @region = Region.find(params[:id])
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(name: params[:region][:name])
    @region.save
    
    redirect_to @region
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    @region = Region.find(params[:id])
    @region.name = params[:region][:name]
    @region.save
    
    redirect_to @region
  end

  def destroy
    @region = Region.find(params[:id])
    @region.delete
    
    redirect_to @region
  end
end
