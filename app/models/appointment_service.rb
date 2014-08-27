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
end
