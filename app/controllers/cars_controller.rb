class CarsController < ApplicationController
  def index
    byebug
    @cars = Car.all
  end

  def show 
    byebug
    @car = Car.find(params[:id])
  end

  def new 
    byebug
    @car = Car.new
  end
    
  def creat
    byebug
  @car = Car.new(car_params)
    if @car.save
      redirect_to @car
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end  
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def car_params
    params.require(:car).permit(:chave, :modelo, :marca, :ano, :ano_modelo, :status)
  end
end