class ResidentialsController < ApplicationController
  def index
    @content = ContentResidential.find(1)
  end

  def view
    @content = ContentItemResidential.find(params[:id])
  end
end
