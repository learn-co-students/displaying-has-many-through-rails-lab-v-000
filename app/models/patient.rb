class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def new

  end

  def index

  end

  def show

  end
end
