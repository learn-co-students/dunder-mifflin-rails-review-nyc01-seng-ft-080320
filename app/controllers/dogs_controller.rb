class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update, :destroy]

    def index
        @dogs = Dog.all
    end
    
    def show
        #before_action will find dog/dog id
    end

    def destroy
       # @dog.destroy
    end

    private

    def find_dog
        @dog = Dog.find(params[:id])
    end
end
