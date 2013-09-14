class SlidesController < ApplicationController
  def show
    @first_image = '/assets/Ash.jpg'
    @no_of_slides = 3
    respond_to do |format|
      format.json { render :json => {:data => ['/assets/Ash.jpg', '/assets/download.jpg', '/assets/images.jpg']} }
      format.html {}
    end
  end
end
