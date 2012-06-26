class HomeController < ApplicationController
  layout 'wide'
  def index
    @content = ContentHome.find(1)
  end
end
