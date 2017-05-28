class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :reset]

  # GET /users/1
  # GET /users/1.json
  def show
    render json: session
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    modify_user :created do
      @user.save
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    modify_user :ok do
      @user.update user_params
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was deleted.' }
      format.json { head :no_content }
    end
  end

  # GET /reset
  def reset
    if @user
      redirect_to @user
    else
      render :reset
    end
    # respond_to do |format|
    #   if yield
    #     format.html { redirect_to @user, notice: 'User was updated.' }
    #     format.json { render :show, status: status, location: @user }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # GET /reset_update
  def reset_update
    respond_to do |format|
      if yield
        format.html { redirect_to @user, notice: 'User was updated.' }
        format.json { render :show, status: status, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  # Structure for handling modification of User
  def modify_user(status)
    respond_to do |format|
      if yield
        format.html { redirect_to @user, notice: 'User was updated.' }
        format.json { render :show, status: status, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
