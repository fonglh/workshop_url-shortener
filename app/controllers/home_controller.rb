class HomeController < ApplicationController
  def index
    @url = Url.new
    @urls = (Url.all).reverse
  end
end
