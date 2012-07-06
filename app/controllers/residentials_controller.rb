class ResidentialsController < ApplicationController
  def index
    @content = ContentResidential.find(1)
    @content_items = ContentItemResidential.order(:title)
  end

  def view
    @content = ContentItemResidential.find_by_title(params[:property])
  end
end
