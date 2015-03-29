class BlogController < ApplicationController
  def index
    render :signup if @user.nil?
  end

  def login
  end

  def logout
  end

  def signup
    @user = User.new
  end

  #post user
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to :index, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: :index }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove
  end

  private
  def user_params
    params.require(:user).permit(:nick_name, :password, :email, :phone,:address,:password_confirmation)
  end
end
