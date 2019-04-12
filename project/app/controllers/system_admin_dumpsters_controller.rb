class SystemAdminDumpstersController < ApplicationController
  before_action :set_system_admin_dumpster, only: [:show, :edit, :update, :destroy]

  # GET /system_admin_dumpsters
  # GET /system_admin_dumpsters.json
  def index
    @system_admin_dumpsters = SystemAdminDumpster.all
  end

  # GET /system_admin_dumpsters/1
  # GET /system_admin_dumpsters/1.json
  def show
  end

  # GET /system_admin_dumpsters/new
  def new
    @system_admin_dumpster = SystemAdminDumpster.new
  end

  # GET /system_admin_dumpsters/1/edit
  def edit
  end

  # POST /system_admin_dumpsters
  # POST /system_admin_dumpsters.json
  def create
    @system_admin_dumpster = SystemAdminDumpster.new(system_admin_dumpster_params)

    respond_to do |format|
      if @system_admin_dumpster.save
        format.html { redirect_to @system_admin_dumpster, notice: 'System admin dumpster was successfully created.' }
        format.json { render :show, status: :created, location: @system_admin_dumpster }
      else
        format.html { render :new }
        format.json { render json: @system_admin_dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_admin_dumpsters/1
  # PATCH/PUT /system_admin_dumpsters/1.json
  def update
    respond_to do |format|
      if @system_admin_dumpster.update(system_admin_dumpster_params)
        format.html { redirect_to @system_admin_dumpster, notice: 'System admin dumpster was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_admin_dumpster }
      else
        format.html { render :edit }
        format.json { render json: @system_admin_dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_admin_dumpsters/1
  # DELETE /system_admin_dumpsters/1.json
  def destroy
    @system_admin_dumpster.destroy
    respond_to do |format|
      format.html { redirect_to system_admin_dumpsters_url, notice: 'System admin dumpster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_admin_dumpster
      @system_admin_dumpster = SystemAdminDumpster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_admin_dumpster_params
      params.require(:system_admin_dumpster).permit(:post_id, :system_admin_id)
    end
end
