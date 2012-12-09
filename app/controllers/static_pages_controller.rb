class StaticPagesController < ApplicationController
  
  def show
    # filter the params[:id] here to allow only certain values
    if !params[:id].match(/about/) then
      redirect_to "/404.html"
      return
    end
    
    if params[:id] == "about" then
      if params[:subid_ajax] then
        render :partial => "static_pages/about_information_partials/#{params[:subid_ajax]}"
        return
      end
    end
  end
  
end
