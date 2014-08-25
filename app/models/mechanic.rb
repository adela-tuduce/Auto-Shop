class Mechanic < ActiveRecord::Base
	has_many :mechanic_services
	has_many :services, through: :mechanic_services
	validates(:name, presence: true)
	validates(:age, presence: true)
	validates(:experience, presence: true)
end
