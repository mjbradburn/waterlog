class SecchiDepthsController < ApplicationController
  before_action :set_secchi_depth, only: [:show, :edit, :update, :destroy]
  before_action :all_secchi_depths, only: [:show, :index, :create, :destroy, :update]
  respond_to :html, :js


  def all_secchi_depths
    @secchi_depths = SecchiDepth.order("created_at DESC")
  end

  # GET /secchi_depths
  # GET /secchi_depths.json

  def index
    @secchi_depths = SecchiDepth.order("created_at DESC")
  end

  # GET /secchi_depths/1
  # GET /secchi_depths/1.json
  def show
    @secchi_depth = SecchiDepth.find(params[:id])
  end

  # GET /secchi_depths/new
  def new
    @secchi_depth = SecchiDepth.new
    @lake = Lake.find(params[:lake_id])
    @secchi_depth.lake_id = params[:lake_id]
  end

  # GET /secchi_depths/1/edit
  def edit
  end

  # POST /secchi_depths
  # POST /secchi_depths.json
  def create

    @secchi_depth = SecchiDepth.new(secchi_depth_params)
    @secchi_depth.save!

    flash.now[:notice] = 'Secchi depth was successfully saved.'

    respond_to do |format|
      format.js
      format.json { render :show, status: :created, location: @secchi_depth }
    end
  end

  # PATCH/PUT /secchi_depths/1
  # PATCH/PUT /secchi_depths/1.json
  def update
    @secchi_depth.update!(secchi_depth_params)
    flash.now[:notice] = 'Secchi depth was successfully updated.'
        respond_to do |format|
      format.js
      format.json { render :show, status: :ok, location: @secchi_depth }
    end
  end

  # DELETE /secchi_depths/1
  # DELETE /secchi_depths/1.json
  def destroy
    @secchi_depth.destroy
    flash.now[:notice] = 'Secchi depth was destroyed.'
    respond_to do |format|
      format.js
      format.json { head :no_content }
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secchi_depth
      @secchi_depth = SecchiDepth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secchi_depth_params
      params.require(:secchi_depth).permit(:sample_time, :weather, :comments,
        :lake_id, :secchi_depth_ft)
    end
end
