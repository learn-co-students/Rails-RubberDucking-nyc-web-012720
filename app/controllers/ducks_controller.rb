class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end
  
  def create
    @duck = Duck.new(duck_params)
    if @duck.save
      flash[:success] = "Duck successfully created"
      redirect_to @duck
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
  
  def edit
    @duck = Duck.find(params[:id])
    @students = Student.all
  end

  def update
    @duck = Duck.find(params[:id])
      if @duck.update(duck_params)
        flash[:success] = "Duck was successfully updated"
        redirect_to @duck
      else
        flash[:error] = "Something went wrong"
        render :edit
      end
  end
  
  def destroy
    @duck = Duck.find(params[:id])
    @duck.destroy
    redirect_to ducks_path
  end
  
  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
  

end
