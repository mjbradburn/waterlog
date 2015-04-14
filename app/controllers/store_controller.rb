class StoreController < ApplicationController
before_action :secchis_empty

def secchis_empty
    @secchi_depths = SecchiDepth.all
    if @secchi_depths.count < 1
      flash.now[:notice] = 'At least one Secchi Sample must be taken first!'
    end
  end

	def index
		@lakes = Lake.order(:lkname)
	end
end
