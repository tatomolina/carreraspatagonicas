class StaticPagesController < ApplicationController
  def index
    @races = Race.where("due_date > :today", {today: Date.today}).limit(6)
    authorize Race
  end

  def contact

  end
end
