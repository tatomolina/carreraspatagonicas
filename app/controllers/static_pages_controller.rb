class StaticPagesController < ApplicationController
  def index
    @races = Race.all
    authorize Race
  end

  def contact

  end
end
