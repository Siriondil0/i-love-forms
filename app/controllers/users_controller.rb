class UsersController < ApplicationController
  protect_from_forgery with: :exception
  def index 
  end
  def new_form
  end
  def create_form
    User.create!(username: params["user_username"], email: params["user_email"], bio: params["user_bio"])
  end
  def new_form_tag
    @user=User.new
  end
  def create_form_tag
    User.create!(username: params[:username], email: params[:email], bio: params[:bio])
  end
  def new_form_for
    @user=User.new
  end
  def create_form_for
    User.create!(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
    redirect_to('/new')
  end
end
