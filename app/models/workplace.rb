<<<<<<< HEAD
# == Schema Information
#
# Table name: workplaces
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime
#  updated_at :datetime
#

=======
>>>>>>> 7af8ec578802743010d6a88815332b5e7125bd57
class Workplace < ActiveRecord::Base
	has_many :appointments
end
