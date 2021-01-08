require "user"


class UserController < ApplicationController
  def read

    puts "--------------------------------------"
    puts "user-read:session = #{session}"
    puts "user-read:session.keys = #{session.keys}"
    puts "user-read:session.keys = #{session[:session_id]}"
    puts "user-read:session[:id] = #{session[:current_user_id]}"
    puts "@_current_user = #{@_current_user}"
    puts "--------------------------------------"

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

    puts "login:id = #{id}"

    session[:current_user_id] = id
    @_current_user = 333

    puts "login:session[:id] = #{session[:current_user_id]}"

    render :json => { code: 200 }
  end
end
