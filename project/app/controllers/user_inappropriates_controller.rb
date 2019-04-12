class UserInappropriatesController < ApplicationController
  before_action :set_user_inappropriate, only: [:show, :edit, :update, :destroy]

  # GET /user_inappropriates
  # GET /user_inappropriates.json
  def index
    @user_inappropriates = UserInappropriate.all
  end

  # GET /user_inappropriates/1
  # GET /user_inappropriates/1.json
  def show
  end

  # GET /user_inappropriates/new
  def new
    @user_inappropriate = UserInappropriate.new
  end

  # GET /user_inappropriates/1/edit
  def edit
  end

  # POST /user_inappropriates
  # POST /user_inappropriates.json
  def create
    @user_inappropriate = UserInappropriate.new(user_inappropriate_params)

    respond_to do |format|
      if @user_inappropriate.save
        format.html { redirect_to @user_inappropriate, notice: 'User inappropriate was successfully created.' }
        format.json { render :show, status: :created, location: @user_inappropriate }
      else
        format.html { render :new }
        format.json { render json: @user_inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_inappropriates/1
  # PATCH/PUT /user_inappropriates/1.json
  def update
    respond_to do |format|
      if @user_inappropriate.update(user_inappropriate_params)
        format.html { redirect_to @user_inappropriate, notice: 'User inappropriate was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_inappropriate }
      else
        format.html { render :edit }
        format.json { render json: @user_inappropriate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_inappropriates/1
  # DELETE /user_inappropriates/1.json
  def destroy
    @user_inappropriate.destroy
    respond_to do |format|
      format.html { redirect_to user_inappropriates_url, notice: 'User inappropriate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_inappropriate
      @user_inappropriate = UserInappropriate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_inappropriate_params
      params.require(:user_inappropriate).permit(:post_id, :user_id)
    end
end
