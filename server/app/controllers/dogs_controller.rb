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

  # def create
  #   @dog = Dog.create dog_params
  #   respond_to do |format|
  #     format.json { render json: @dogs.to_json }
  #   end  
  # end

  # def edit
  #   @dog = Dog.find params[:id]
  # end

  # def show 
  #   @dog = Dog.find params[:id]
  # end

  # def update
  #   @dog = Dog.find params[:id]
  #   @dog.update_attributes dog_params
  #   respond_to do |format|
  #     format.json { render json: @dogs.to_json }
  #   end
  # end


  def destroy
    @dog = Dog.find params[:id]
    @dog.destroy
    respond_to do |format|
      format.json { render nothing: true }
    end
  end

# private
#   def dog_params
#     params.require(:dog).permit(
#       :name,
#       :email,
#       :breed,
#       :age,
#       :gender,
#       :photo,
#       :disposition
#       )
#   end

end
