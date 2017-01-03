class DemoController < ApplicationController
  layout false
  # def index
  # end

  def hello
    @page = params[:page]
    @id = params[:id]
    # render('hello')
  end
  #
  # def other_hello
  #   redirect_to(action: 'index')
  # end
  #
  # def google
  #   redirect_to('http://google.com')
  # end
end
