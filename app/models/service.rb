<<<<<<< HEAD
# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  time       :integer
#  price      :integer
#  created_at :datetime
#  updated_at :datetime
#

=======
>>>>>>> 7af8ec578802743010d6a88815332b5e7125bd57
class Service < ActiveRecord::Base
  has_many :appointment_services
  has_many :appointments, through: :appointment_services
  has_many :mechanic_services
  has_many :mechanics, through: :mechanic_services
  validates(:name, presence: true)
  validates(:time, presence: true)
  validates(:price, presence: true)
end
