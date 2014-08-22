class Mechanic < ActiveRecord::Base
	has_many :mechanic_skills
	has_many :skills, through: :mechanic_skills
	validates(:name, presence: true)
	validates(:age, presence: true)
	validates(:experience, presence: true)
end
