class AdminInappropriatesController < ApplicationController
  before_action :set_admin_inappropriate, only: [:show, :edit, :update, :destroy]

  # GET /admin_inappropriates
  # GET /admin_inappropriates.json
  def index
    @admin_inappropriates = AdminInappropriate.all
  end

  # GET /admin_inappropriates/1
  # GET /admin_inappropriates/1.json
  def show
  end

  # GET /admin_inappropriates/new
  def new
    @admin_inappropriate = AdminInappropriate.new
  end

  # GET /admin_inappropriates/1/edit
  def edit
  end

  # POST /admin_inappropriates
  # POST /admin_inappropriates.json
  def create
    @admin_inappropriate = AdminInappropriate.new(admin_inappropriate_params)

    respond_to do |format|
      if @admin_inappropriate.save
        format.html { redirect_to @admin_inappropriate, notice: 'Admin inappropriate was successfully created.' }
        format.json { render :show, status: :created, location: @admin_inappropriate }
      else
        format.html { render :new }
        format.json { render json: @admin_inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_inappropriates/1
  # PATCH/PUT /admin_inappropriates/1.json
  def update
    respond_to do |format|
      if @admin_inappropriate.update(admin_inappropriate_params)
        format.html { redirect_to @admin_inappropriate, notice: 'Admin inappropriate was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_inappropriate }
      else
        format.html { render :edit }
        format.json { render json: @admin_inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_inappropriates/1
  # DELETE /admin_inappropriates/1.json
  def destroy
    @admin_inappropriate.destroy
    respond_to do |format|
      format.html { redirect_to admin_inappropriates_url, notice: 'Admin inappropriate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_inappropriate
      @admin_inappropriate = AdminInappropriate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_inappropriate_params
      params.require(:admin_inappropriate).permit(:post_id, :admin_id)
    end
end
