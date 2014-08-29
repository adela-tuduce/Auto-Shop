
# == Schema Information
#
# Table name: appointments
#
#  id           :integer          not null, primary key
#  car_id       :integer
#  hour         :datetime
#  workplace_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Appointment < ActiveRecord::Base
	belongs_to :client
	has_one :workplace
	has_one :car
	has_many :appointment_services
	has_many :services, through: :appointment_services
	has_many :mechanics
	validates(:hour, presence: true)
end
