class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    respond_to do |format|  
      format.json { render json: @dogs.to_json }
    end
  end

  # def new
  #   @dog = Dog.new
  # end

  def create
    @dog = Dog.new dog_params
    if @dog.save
    respond_to do |format|
      format.json { render json: @dog.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @dog.errors.full_messages, status: 422 }
      end
    end
  end

  # def edit
  #   @dog = Dog.find params[:id]
  # end

  # def show 
  #   @dog = Dog.find params[:id]
  # end

  def update
    @dog = Dog.find params[:id]
    if @dog.update_attributes dog_params
      respond_to do |format|
        format.json { render json: @dog.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @dog.errors.full_messages, status: 422 }
      end
    end
  end

  def show
    @dog = Dog.find params[:id]
    respond_to do |format|
      format.json { render json: @dog.to_json }
    end
  end

  def destroy
    @dog = Dog.find params[:id]
    @dog.destroy
    respond_to do |format|
      format.json { render nothing: true }
    end
  end

private
  def dog_params
    params.require(:dog).permit(
      :name,
      :email,
      :breed,
      :age,
      :gender,
      :photo,
      :disposition
      )
  end

end
