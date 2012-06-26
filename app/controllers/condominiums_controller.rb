class CondominiumsController < ApplicationController
  def index
    @content = ContentCondo.find(1)
  end

  def view
  end
end
