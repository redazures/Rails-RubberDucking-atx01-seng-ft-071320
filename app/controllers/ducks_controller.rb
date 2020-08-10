class DucksController < ApplicationController
  before_action :find_employee, only:[:show,:edit,:update,:destroy]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new
    @duck=Duck.new
  end

  def create
    @duck=Duck.create(duck_params)
    byebug
    if @duck.valid?
      redirect_to duck_path(@duck)
    else
      flash[:my_errors]=@duck.errors.full_messages
      redirect_to new_duck_path(@duck)
    end
  end

  def edit
  end

  def update
    if @duck.update(duck_params)
      redirect_to duck_path(@duck)
    else
      flash[:my_errors]=@duck.errors.full_messages
      redirect_to edit_duck_path(@duck)
    end
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :mod, :student_id)
  end

  def find_duck
    @duck=Duck.find(params[:id])
  end

end
