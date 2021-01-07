require "content"

class TodoController < ApplicationController
  def index
    contents = Content.all
    @contents = contents
  end

  def create
    render :json => { name: "create" }
  end

  def delete
    render :json => { name: "delete" }
  end

  def playground
    @key = "value"
  end
end
