require "content"

class TodoController < ApplicationController
  def index
    contents = Content.all
    @contents = contents
  end
end
