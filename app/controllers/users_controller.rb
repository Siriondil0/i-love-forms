class UsersController < ApplicationController
  protect_from_forgery with: :exception
  def index 
  end
  def new_form
  end
  def create_form
    User.create!(username: params["user_username"], email: params["user_email"], bio: params["user_bio"])
  end
  def new
    #A décommenter pour les méthode avec Form_tag et Form_for
    @user=User.new
  end
  def create
    #A décommenter pour la méthode avec Form
    # 
    #A décommenter pour la méthode avec Form_tag
    #User.create!(username: params[:username], email: params[:email], bio: params[:bio])
    #A décommenter pour la méthode avec Form_for
    User.create!(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
    redirect_to('/new')
  end
end
