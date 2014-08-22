class AppointmentService < ActiveRecord::Base
  has_many :appointments
  has_many :services
end
