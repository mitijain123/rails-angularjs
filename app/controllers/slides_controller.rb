class SlidesController < ApplicationController
  def show
    @first_image = '/assets/AlphaBlip2.png'
    @no_of_slides = 3
    respond_to do |format|
      format.json { render :json => {:data => ['/assets/AlphaBlip2.png', '/assets/AlphBlip.png', '/assets/Atlanta1.jpg']} }
      format.html {}
    end
  end
end