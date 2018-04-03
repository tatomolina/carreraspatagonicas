class StaticPagesController < ApplicationController
  def index
    @races = Race.all
  end
end
