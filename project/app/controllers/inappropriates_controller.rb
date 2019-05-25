class InappropriatesController < ApplicationController
  before_action :set_inappropriate, only: [:show, :edit, :update, :destroy]

  # GET /inappropriates
  # GET /inappropriates.json
  def index
    @inappropriates = Inappropriate.all
  end

  # GET /inappropriates/1
  # GET /inappropriates/1.json
  def show
  end

  # GET /inappropriates/new
  def new
    @inappropriate = Inappropriate.new
  end

  # GET /inappropriates/1/edit
  def edit
  end

  # POST /inappropriates
  # POST /inappropriates.json
  def create
    @inappropriate = Inappropriate.new(inappropriate_params)

    respond_to do |format|
      if @inappropriate.save
        format.html { redirect_to @inappropriate, notice: 'Inappropriate was successfully created.' }
        format.json { render :show, status: :created, location: @inappropriate }
      else
        format.html { render :new }
        format.json { render json: @inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inappropriates/1
  # PATCH/PUT /inappropriates/1.json
  def update
    respond_to do |format|
      if @inappropriate.update(inappropriate_params)
        format.html { redirect_to @inappropriate, notice: 'Inappropriate was successfully updated.' }
        format.json { render :show, status: :ok, location: @inappropriate }
      else
        format.html { render :edit }
        format.json { render json: @inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inappropriates/1
  # DELETE /inappropriates/1.json
  def destroy
    @inappropriate.destroy
    respond_to do |format|
      format.html { redirect_to inappropriates_url, notice: 'Inappropriate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inappropriate
      @inappropriate = Inappropriate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inappropriate_params
      params.require(:inappropriate).permit(:registred_user_id, :post_id)
    end
end
