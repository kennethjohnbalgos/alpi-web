class CondominiumsController < ApplicationController
  def index
    @content = ContentCondo.find(1)
  end

  def view
    @content = ContentItemCondo.find(params[:id])
  end
end
