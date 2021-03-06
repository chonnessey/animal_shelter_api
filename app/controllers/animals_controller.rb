class AnimalsController < ApplicationController

  def index
    @animals = Animal.page params[:page]
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "This animal has been updated successfully."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 200, json: {
        message: "This animal has been successfully destroyed."
      }
    end
  end

  def dogs
    @animals = Animal.dogs
    json_response(@animals, 200)
  end

  def cats
    @animals = Animal.cats
    json_response(@animals, 200)
  end

  def cheap_fee
    @animals = Animal.cheap_fee
    json_response(@animals, 200)
  end

  def puppies 
    @animals = Animal.puppies
    json_response(@animals, 200)
  end

  private

  def animal_params
    params.permit(:animal_type, :breed, :age, :sex, :color, :weight, :date, :adoption_fee, :name)
  end
end