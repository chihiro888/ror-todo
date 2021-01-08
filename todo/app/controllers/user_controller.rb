require "user"


class UserController < ApplicationController
  def read
    users = User.all.order(created_at: :desc)
    render :json => { code: 200, data: users }
  end

  def create
    input_username = params[:input_username]

    # validate
    if input_username == ''
      render :json => { code: 400, msg: 'usernameを入れてください' }
      return false  
    end

    user = User.new
    user.username = input_username
    user.save()

    render :json => { code: 200 }
  end

  def login
    id = params[:id]

    session[:id] = id
    user = User.find_by(id: id)

    render :json => { code: 200, data: user }
  end

  def save
    session[:hello] = 999
    render :json => { code: 200 }
  end

  def load
    render :json => { code: 200, session: session[:hello] }
  end
end
