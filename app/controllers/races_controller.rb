class RacesController < ApplicationController

  def index
    @races = Race.all
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new(race_params)

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
  end

  def update
    @race = Race.find(params[:id])

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
    @race.destroy

    redirect_to orders_path
  end

  private

  def race_params
    params.require(:race).permit(:name, :due_date)
  end

end
