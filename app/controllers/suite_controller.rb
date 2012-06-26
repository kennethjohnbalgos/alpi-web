class SuiteController < ApplicationController
  def index
    @content = ContentSuite.find(1)
  end
end
