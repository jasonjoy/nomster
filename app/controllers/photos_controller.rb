class PhotosController < ApplicationController
	befor_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photo_params)
		redirect_to place_path(@place)
	end

	private

	def photo_params
		params.permit(:caption)
	end
end
