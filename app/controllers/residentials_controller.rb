class ResidentialsController < ApplicationController
  def index
    @content = ContentResidential.find(1)
  end

  def view
  end
end
