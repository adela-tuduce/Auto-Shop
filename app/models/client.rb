
# == Schema Information
#
# Table name: clients
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  phone_number :string(255)
#  address      :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#
class Client < ActiveRecord::Base
  validates(:name, presence: true)
  validates(:phone_number, presence: true)
  validates(:address, presence: true)
  has_many :cars
end
