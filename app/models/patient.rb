class Patient < ActiveRecord::Base

  has_many :appointments
  has_many :doctors, through: :appointments

  def index
  end

  def new
  end

  def show
  end
end
