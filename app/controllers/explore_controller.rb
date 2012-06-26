class ExploreController < ApplicationController
  def index
    @content = ContentExplore.find(1)
  end
end
