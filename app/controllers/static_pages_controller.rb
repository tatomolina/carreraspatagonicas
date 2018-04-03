class StaticPagesController < ApplicationController
  def index
    @races = Race.all
  end

  def contact

  end
end
