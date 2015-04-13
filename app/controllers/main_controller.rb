class MainController < ApplicationController
  before_filter :check_for_mobile, :only => [:index]  
  def index   
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
