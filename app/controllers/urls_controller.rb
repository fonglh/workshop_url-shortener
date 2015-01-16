class UrlsController < ApplicationController
  def create
    @url = Url.new(model_params)
    if @url.save
      redirect_to root_path
    else
      redirect_to root_path, alert: 'Cannot create lah!'
    end
  end

  private
    def model_params
      params.require(:url).permit(:long_url)
    end
end
