
# == Schema Information
#
# Table name: mechanics
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  experience :integer
#  created_at :datetime
#  updated_at :datetime
#
class Mechanic < ActiveRecord::Base
	has_many :mechanic_services
	has_many :services, through: :mechanic_services
	validates(:name, presence: true)
	validates(:age, presence: true)
	validates(:experience, presence: true)
end
