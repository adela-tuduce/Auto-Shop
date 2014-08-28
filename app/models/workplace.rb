
# == Schema Information
#
# Table name: workplaces
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Workplace < ActiveRecord::Base
	has_many :appointments
end
