require "content"
require "user"


class TodoController < ApplicationController
  def index
    contents = Content.all.order(created_at: :desc)

    @contents = contents
  end

  def read
    puts "todo-read:session[:id] = #{session[:id]}"

    contents = Content.all.order(created_at: :desc)
    render :json => { code: 200, data: contents }
  end

  def create
    input_content = params[:input_content]

    # validate
    if input_content == ''
      render :json => { code: 400, msg: '内容を入れてください' }
      return false  
    end

    content = Content.new
    content.content = input_content
    content.save()

    render :json => { code: 200 }
  end

  def delete
    todo_id = params[:todo_id]

    Content.destroy_by(id: todo_id)

    render :json => { code: 200 }
  end

  def update
    todo_id = params[:todo_id]

    content = Content.find_by(id: todo_id)
    content.update(complete_yn: 'Y')

    render :json => { code: 200 }
  end

  def playground
    @key = "value"
  end
end
