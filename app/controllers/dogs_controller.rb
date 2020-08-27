class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update, :create]

    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
    end

    def show
    end

    def edit
    end

    def update
        @dog.update(dog_params)
    end


    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end
        

    def find_dog
        @dog = Dog.find(params[:id])
    end

end
