class HomeController < ApplicationController

   def index
    respond_to do |format|
      format.html # index.html.erb    
      format.json { render 'application.html.erb' }
    end
  end
end
