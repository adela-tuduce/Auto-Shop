class Service < ActiveRecord::Base
  has_many :appointment_services
  has_many :appointments, through: :appointment_services
  validates(:name, presence: true)
  validates(:time, presence: true)
  validates(:price, presence: true)
end
