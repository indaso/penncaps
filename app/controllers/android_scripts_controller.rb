class AndroidScriptsController < ApplicationController
  def new
  	@android_script = AndroidScript.new
  end

  def show
  	@android_script = AndroidScript.find(params[:id])
  end

  def index
  	@android_scripts = AndroidScript.all
  end

  def edit
  	@android_script = AndroidScript.find(params[:id])
  end

  def update
    @android_script = AndroidScript.find(params[:id])
    if @android_script.update_attributes(android_scripts_params)
      redirect_to android_scripts_path(@android_script.id)
    else
      render 'edit'
    end
  end
  
  def create
  	@android_script = AndroidScript.new(android_scripts_params)
  	if @android_script.save
  		flash[:notice] = "File was uploaded!"
  		redirect_to android_scripts_path
  	else
  		flash[:alert] = "File was not uploaded!"
  		render 'new'
  	end
  end

  def destroy
    @android_script = AndroidScript.find(params[:id])
    @android_script.destroy
    redirect_to android_scripts_path
  end

  def android_scripts_params
  	params.require(:android_script).permit(:name, :script)
  end
end
