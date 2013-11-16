class PicsController < ApplicationController

# def edit
# end

	def index
		if params[:emotion].present?
			@pics = Pic.where(:emotion=>params[:emotion])
		else
			@pics = Pic.all
		end
	end

	def new

		@pic = Pic.new

	end

	def create

		@pic = Pic.create( pic_params )
		redirect_to pics_path

	end

	private


	def pic_params
		params.require(:pic).permit(:lesson, :image, :emotion, :learned)
	end

end
