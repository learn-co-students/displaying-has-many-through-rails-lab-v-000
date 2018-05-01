class AppointmentsController < ApplicationController
  def index

  end

  def show
    binding.pry
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def appointment_params
    params.require().permit()
  end
end
