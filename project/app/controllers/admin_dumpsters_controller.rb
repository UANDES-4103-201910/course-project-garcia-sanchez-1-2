class AdminDumpstersController < ApplicationController
  before_action :set_admin_dumpster, only: [:show, :edit, :update, :destroy]

  # GET /admin_dumpsters
  # GET /admin_dumpsters.json
  def index
    @admin_dumpsters = AdminDumpster.all
  end

  # GET /admin_dumpsters/1
  # GET /admin_dumpsters/1.json
  def show
  end

  # GET /admin_dumpsters/new
  def new
    @admin_dumpster = AdminDumpster.new
  end

  # GET /admin_dumpsters/1/edit
  def edit
  end

  # POST /admin_dumpsters
  # POST /admin_dumpsters.json
  def create
    @admin_dumpster = AdminDumpster.new(admin_dumpster_params)

    respond_to do |format|
      if @admin_dumpster.save
        format.html { redirect_to @admin_dumpster, notice: 'Admin dumpster was successfully created.' }
        format.json { render :show, status: :created, location: @admin_dumpster }
      else
        format.html { render :new }
        format.json { render json: @admin_dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_dumpsters/1
  # PATCH/PUT /admin_dumpsters/1.json
  def update
    respond_to do |format|
      if @admin_dumpster.update(admin_dumpster_params)
        format.html { redirect_to @admin_dumpster, notice: 'Admin dumpster was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_dumpster }
      else
        format.html { render :edit }
        format.json { render json: @admin_dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_dumpsters/1
  # DELETE /admin_dumpsters/1.json
  def destroy
    @admin_dumpster.destroy
    respond_to do |format|
      format.html { redirect_to admin_dumpsters_url, notice: 'Admin dumpster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dumpster
      @admin_dumpster = AdminDumpster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_dumpster_params
      params.require(:admin_dumpster).permit(:post_id, :admin_id)
    end
end
