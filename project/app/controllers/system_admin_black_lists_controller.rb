class SystemAdminBlackListsController < ApplicationController
  before_action :set_system_admin_black_list, only: [:show, :edit, :update, :destroy]

  # GET /system_admin_black_lists
  # GET /system_admin_black_lists.json
  def index
    @system_admin_black_lists = SystemAdminBlackList.all
  end

  # GET /system_admin_black_lists/1
  # GET /system_admin_black_lists/1.json
  def show
  end

  # GET /system_admin_black_lists/new
  def new
    @system_admin_black_list = SystemAdminBlackList.new
  end

  # GET /system_admin_black_lists/1/edit
  def edit
  end

  # POST /system_admin_black_lists
  # POST /system_admin_black_lists.json
  def create
    @system_admin_black_list = SystemAdminBlackList.new(system_admin_black_list_params)

    respond_to do |format|
      if @system_admin_black_list.save
        format.html { redirect_to @system_admin_black_list, notice: 'System admin black list was successfully created.' }
        format.json { render :show, status: :created, location: @system_admin_black_list }
      else
        format.html { render :new }
        format.json { render json: @system_admin_black_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_admin_black_lists/1
  # PATCH/PUT /system_admin_black_lists/1.json
  def update
    respond_to do |format|
      if @system_admin_black_list.update(system_admin_black_list_params)
        format.html { redirect_to @system_admin_black_list, notice: 'System admin black list was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_admin_black_list }
      else
        format.html { render :edit }
        format.json { render json: @system_admin_black_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_admin_black_lists/1
  # DELETE /system_admin_black_lists/1.json
  def destroy
    @system_admin_black_list.destroy
    respond_to do |format|
      format.html { redirect_to system_admin_black_lists_url, notice: 'System admin black list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_admin_black_list
      @system_admin_black_list = SystemAdminBlackList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_admin_black_list_params
      params.require(:system_admin_black_list).permit(:user_id, :system_admin_id)
    end
end
