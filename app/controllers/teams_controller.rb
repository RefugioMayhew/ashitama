class TeamsController < ApplicationController
  def index
    @team = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new
    @team.name = params[:team][:name]
    @team.region_id = params[:team][:region_id]
    @team.category_id = params[:team][:category_id]
    
    @team.save
    
    redirect_to @team
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.name = params[:team][:name]
    @team.region_id = params[:team][:region_id]
    @team.category_id = params[:team][:category_id]
    
    @team.save
    
    redirect_to @team
  end

  def destroy
    @team = Team.find(params[:id])
    @team.delete
    
    redirect_to teams_path
  end
end
