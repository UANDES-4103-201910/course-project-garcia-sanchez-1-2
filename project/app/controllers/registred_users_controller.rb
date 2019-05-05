class RegistredUsersController < ApplicationController
  before_action :set_registred_user, only: [:show, :edit, :update, :destroy]

  # GET /registred_users
  # GET /registred_users.json
  def index
    @registred_users = RegistredUser.all
  end

  # GET /registred_users/1
  # GET /registred_users/1.json
  def show
  end

  # GET /registred_users/new
  def new
    @registred_user = RegistredUser.new
  end

  # GET /registred_users/1/edit
  def edit
  end

  # POST /registred_users
  # POST /registred_users.json
  def create
    @registred_user = RegistredUser.new(registred_user_params)

    respond_to do |format|
      if @registred_user.save
        format.html { redirect_to @registred_user, notice: 'Registred user was successfully created.' }
        format.json { render :show, status: :created, location: @registred_user }
      else
        format.html { render :new }
        format.json { render json: @registred_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registred_users/1
  # PATCH/PUT /registred_users/1.json
  def update
    respond_to do |format|
      if @registred_user.update(registred_user_params)
        format.html { redirect_to @registred_user, notice: 'Registred user was successfully updated.' }
        format.json { render :show, status: :ok, location: @registred_user }
      else
        format.html { render :edit }
        format.json { render json: @registred_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registred_users/1
  # DELETE /registred_users/1.json
  def destroy
    @registred_user.destroy
    respond_to do |format|
      format.html { redirect_to registred_users_url, notice: 'Registred user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registred_user
      @registred_user = RegistredUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registred_user_params
      params.require(:registred_user).permit(:mail, :city, :country, :phone, :name, :last_name, :password)
    end
end
