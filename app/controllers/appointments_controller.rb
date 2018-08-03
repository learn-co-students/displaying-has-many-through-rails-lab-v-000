class AppointmentsController < ApplicationController

  belongs_to :doctors
  belongs_to :patients
end
