class VisitsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.build
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @visit = Visit.new(visit_params)

    if @visit.save
      redirect_to @pet, error: "Visit was successfully created."
    else
      render :new
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:notes, :pet_id)
  end
end
