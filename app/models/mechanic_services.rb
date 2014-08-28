
# == Schema Information
#
# Table name: mechanic_services
#
#  id          :integer          not null, primary key
#  mechanic_id :integer
#  service_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#
class MechanicServices < ActiveRecord::Base
end
