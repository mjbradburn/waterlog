module Api
	module V1
		class SecchiDepthsController < ApplicationController
		respond_to :json
		
		def index
			respond_with SecchiDepth.all
		end
		def show
			respond_with SecchiDepth.find(params[:id])
		end
		def create
			respond_with SecchiDepth.create(params[:secchi_depth])
		end
		def update
			respond_with SecchiDepth.update(params[:id], params[:secchi_depth])
		end
		def destroy
			respond_with SecchiDepth.destroy(params[:id])
		end	
	end
end