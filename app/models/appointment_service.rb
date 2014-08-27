<<<<<<< HEAD
# == Schema Information
#
# Table name: appointment_services
#
#  id             :integer          not null, primary key
#  appointment_id :integer
#  service_id     :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class AppointmentService < ActiveRecord::Base
  belongs_to :appointment
  belongs_to :service
=======
class AppointmentService < ActiveRecord::Base
  has_many :appointments
  has_many :services
>>>>>>> 7af8ec578802743010d6a88815332b5e7125bd57
end
