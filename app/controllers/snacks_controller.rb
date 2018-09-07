class SnacksController < ApplicationController

  def show
    @machine = Machine.all
    @snack = Snack.find(params[:id])
  end
end
