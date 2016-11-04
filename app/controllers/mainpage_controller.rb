class MainpageController < ApplicationController
  def index
    @categories=Category.all

  end

end
