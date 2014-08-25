class Service < ActiveRecord::Base
  has_many :appointment_services
  has_many :appointments, through: :appointment_services
  has_many :mechanic_services
  has_many :mechanics, through: :mechanic_services
  validates(:name, presence: true)
  validates(:time, presence: true)
  validates(:price, presence: true)
end
