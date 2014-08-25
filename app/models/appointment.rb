class Appointment < ActiveRecord::Base
	belongs_to :client
	has_one :workplace
	has_many :appointment_services
	has_one :car
	has_many :services, through: :appointment_services
	validates(:hour, presence: true)
	validates(:date, presence: true)
	validates(:car_id, presence: true)
end
