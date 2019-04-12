class SystemAdminInappropriatesController < ApplicationController
  before_action :set_system_admin_inappropriate, only: [:show, :edit, :update, :destroy]

  # GET /system_admin_inappropriates
  # GET /system_admin_inappropriates.json
  def index
    @system_admin_inappropriates = SystemAdminInappropriate.all
  end

  # GET /system_admin_inappropriates/1
  # GET /system_admin_inappropriates/1.json
  def show
  end

  # GET /system_admin_inappropriates/new
  def new
    @system_admin_inappropriate = SystemAdminInappropriate.new
  end

  # GET /system_admin_inappropriates/1/edit
  def edit
  end

  # POST /system_admin_inappropriates
  # POST /system_admin_inappropriates.json
  def create
    @system_admin_inappropriate = SystemAdminInappropriate.new(system_admin_inappropriate_params)

    respond_to do |format|
      if @system_admin_inappropriate.save
        format.html { redirect_to @system_admin_inappropriate, notice: 'System admin inappropriate was successfully created.' }
        format.json { render :show, status: :created, location: @system_admin_inappropriate }
      else
        format.html { render :new }
        format.json { render json: @system_admin_inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_admin_inappropriates/1
  # PATCH/PUT /system_admin_inappropriates/1.json
  def update
    respond_to do |format|
      if @system_admin_inappropriate.update(system_admin_inappropriate_params)
        format.html { redirect_to @system_admin_inappropriate, notice: 'System admin inappropriate was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_admin_inappropriate }
      else
        format.html { render :edit }
        format.json { render json: @system_admin_inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_admin_inappropriates/1
  # DELETE /system_admin_inappropriates/1.json
  def destroy
    @system_admin_inappropriate.destroy
    respond_to do |format|
      format.html { redirect_to system_admin_inappropriates_url, notice: 'System admin inappropriate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_admin_inappropriate
      @system_admin_inappropriate = SystemAdminInappropriate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_admin_inappropriate_params
      params.require(:system_admin_inappropriate).permit(:post_id, :system_admin_id)
    end
end
