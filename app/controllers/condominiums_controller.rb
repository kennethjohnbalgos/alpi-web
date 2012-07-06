class CondominiumsController < ApplicationController
  def index
    @content = ContentCondo.find(1)
    @content_items = ContentItemCondo.order(:title)
  end

  def view
    @content = ContentItemCondo.find_by_title(params[:property])
  end
end
