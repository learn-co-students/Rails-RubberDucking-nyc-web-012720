class DucksController < ApplicationController
  before_action :create_duck, only:[:show, :edit, :update]
  
  def index
    @ducks = Duck.all
  end

  def show
    
  end

  def new
    @duck = Duck.new
  end

  def create 
    @duck = Duck.create(duck_params)

    if @duck.valid?
      redirect_to @duck
    else 
      flash[:errors] = @duck.errors.full_messages
      redirect_to new_duck_path
    end
  end

  def edit
    
  end

  def update
    @duck.update(duck_params)

    redirect_to @duck
  end
  

  private
  
  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def create_duck
    @duck = Duck.find(params[:id])
  end

end
