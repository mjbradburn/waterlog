class PhosphosController < ApplicationController
  before_action :set_phospho, only: [:show, :edit, :update, :destroy]
  before_action :all_phosphos, only: [:show, :index, :create, :destroy, :update]

  respond_to :html, :js
  # GET /phosphos
  # GET /phosphos.json
  def all_phosphos
    @phosphos = Phospho.order("created_at DESC")
    
  end

  def index
    @phosphos = Phospho.order("created_at DESC")
  end

  # GET /phosphos/1
  # GET /phosphos/1.json
  def show
  end

  # GET /phosphos/new
  def new
    @phospho = Phospho.new
    @lake = Lake.find(params[:lake_id])
    @phospho.lake_id = params[:lake_id]
  end

  # GET /phosphos/1/edit
  def edit
  end

  # POST /phosphos
  # POST /phosphos.json
  def create
    @phospho = Phospho.new(phospho_params)
    @phospho.save!
    flash.now[:notice] = 'Phosphorus sample was successfully created'
    respond_to do |format|
      format.js
      format.json { render :show, status: :created, location: @phospho }
    end
  end

  # PATCH/PUT /phosphos/1
  # PATCH/PUT /phosphos/1.json
  def update
    @phospho.update!(phospho_params)
    flash.now[:notice] = 'Phosphorus sample was successfully updated.'
    respond_to do |format|
      format.js
      format.json { render :show, status: :created, location: @phospho }
    end
  end

  # DELETE /phosphos/1
  # DELETE /phosphos/1.json
  def destroy
    @phospho.destroy
    flash.now[:notice] = 'Phosphorus sample was destroyed'
    respond_to do |format|
      format.js
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phospho
      @phospho = Phospho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phospho_params
      params.require(:phospho).permit(:lake_id, :sample_time, :season, :weather, :ice_out, :sample_submit, :comments)
    end
  end
