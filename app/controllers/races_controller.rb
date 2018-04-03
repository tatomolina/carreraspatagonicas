class RacesController < ApplicationController

  def index
    @races = Race.all
    authorize Race
  end

  def show
    @race = Race.find(params[:id])
  end

  def new
    @race = Race.new
    authorize @race
  end

  def create
    @race = Race.new(race_params)
    authorize @race

    if @race.save
      flash[:notice] = "Race created succesfully"
      redirect_to races_path
    else
      flash[:alert] = "#{@race.errors.count} error prohibited this race from bieng created: "
      @race.errors.full_messages.each do |msg|
        flash[:alert] << "#{msg}"
        flash[:alert] << ", " unless @race.errors.full_messages.last == msg
      end
      render 'new'
    end
  end

  def edit
    @race = Race.find(params[:id])
    authorize @race
  end

  def update
    @race = Race.find(params[:id])
    authorize @race

    if @race.update(race_params)
      flash[:notice] = "Race updated succesfully"
      redirect_to races_path
    else
      flash[:alert] = "#{@race.errors.count} error prohibited this race from bieng updated: "
      @race.errors.full_messages.each do |msg|
        flash[:alert] << "#{msg}"
        flash[:alert] << ", " unless @race.errors.full_messages.last == msg
      end
      render 'edit'
    end
  end

  def destroy
    @race = Race.find(params[:id])
    authorize @race
    @race.destroy

    redirect_to orders_path
  end

  private

  def race_params
    params.require(:race).permit(:name, :due_date)
  end

end
