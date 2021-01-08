require "content"
require "user"


class TodoController < ApplicationController
  def index
  end

  def read
    id = session[:id]
    contents = Content.where(user_id: id).order(created_at: :desc)
    
    render :json => { code: 200, data: contents }
  end

  def create
    id = session[:id]
    input_content = params[:input_content]

    # validate
    if input_content == ''
      render :json => { code: 400, msg: '内容を入れてください' }
      return false  
    end

    content = Content.new
    content.content = input_content
    content.user_id = id
    content.save()

    render :json => { code: 200 }
  end

  def delete
    id = session[:id]
    todo_id = params[:todo_id]

    Content.destroy_by(id: todo_id, user_id: id)

    render :json => { code: 200 }
  end

  def update
    id = session[:id]
    todo_id = params[:todo_id]

    content = Content.find_by(id: todo_id, user_id: id)
    content.update(complete_yn: 'Y')

    render :json => { code: 200 }
  end

  def playground
    @key = "value"
  end
end
