class DemoController < ApplicationController
  layout false
  def index
  end

  def show
    @page = params[:page]
    @id = params[:id]
  end
end
