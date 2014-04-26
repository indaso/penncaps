class StaticController < ApplicationController
  def index
  end

  def uploads

  	@admin = current_admin
  	
  end
end
