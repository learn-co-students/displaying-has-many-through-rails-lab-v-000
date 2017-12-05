class Doctor < ActiveRecord::Base

  has_many :appointments
  has_many :patients, through: :appointments

  def new
  end

  def index
  end

  def show
  end
end
