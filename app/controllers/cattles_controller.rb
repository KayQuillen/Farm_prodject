class CattlesController < ApplicationController
  before_action :set_cattle, only: [:show, :edit, :update, :destroy]

  # GET /cattles
  # GET /cattles.json
  def index
    @cattles = Cattle.all
  end

  # GET /cattles/1
  # GET /cattles/1.json
  def show
  end

  # GET /cattles/new
  def new
    @cattle = Cattle.new
  end

  # GET /cattles/1/edit
  def edit
  end

  # POST /cattles
  # POST /cattles.json
  def create
    @cattle = Cattle.new(cattle_params)

    respond_to do |format|
      if @cattle.save
        format.html { redirect_to @cattle, notice: 'Cattle was successfully created.' }
        format.json { render :show, status: :created, location: @cattle }
      else
        format.html { render :new }
        format.json { render json: @cattle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cattles/1
  # PATCH/PUT /cattles/1.json
  def update
    respond_to do |format|
      if @cattle.update(cattle_params)
        format.html { redirect_to @cattle, notice: 'Cattle was successfully updated.' }
        format.json { render :show, status: :ok, location: @cattle }
      else
        format.html { render :edit }
        format.json { render json: @cattle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cattles/1
  # DELETE /cattles/1.json
  def destroy
    @cattle.destroy
    respond_to do |format|
      format.html { redirect_to cattles_url, notice: 'Cattle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cattle
      @cattle = Cattle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cattle_params
      params.require(:cattle).permit(:tag, :color, :gender, :heffer, :dob, :descendant_of, :immunization)
    end
end
