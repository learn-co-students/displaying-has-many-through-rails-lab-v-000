class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end




end



  # 1) appointments should display an appointment's doctor
  #    Failure/Error: expect(page).to have_link("Hawkeye Pierce", href: doctor_path(@hawkeye))
  #      expected to find link "Hawkeye Pierce" with href "/doctors/1" but there were no matches
  #    # ./spec/features/appointments_spec.rb:12:in `block (2 levels) in <top (required)>'

  # 2) appointments should display an appointment's patient
  #    Failure/Error: expect(page).to have_link("Homer Simpson", href: patient_path(@homer))
  #      expected to find link "Homer Simpson" with href "/patients/1" but there were no matches
  #    # ./spec/features/appointments_spec.rb:17:in `block (2 levels) in <top (required)>'

