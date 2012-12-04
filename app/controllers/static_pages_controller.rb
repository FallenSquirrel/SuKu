class StaticPagesController < ApplicationController
  
  def show
    # filter the params[:id] here to allow only certain values
    if !params[:id].match(/about/) then
      redirect_to "/404.html"
    end
  end
  
end
