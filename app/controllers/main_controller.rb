class MainController < ApplicationController
  before_filter :check_for_mobile, :only => [:index]  
  def index   
    if browser.safari?
      render 'index_safari'
    else  
      render 'index'      
    end  
  end
  
  def branch     
  end  
  
  def mobile_click
    c = MobileClick.new(location: params[:location])
    c.save!
    render nothing: true    
  end
  
  def desktop_click
    c = DesktopClick.new(location: params[:location])
    c.save!
    render nothing: true
  end
  
end
