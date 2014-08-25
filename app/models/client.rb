class Client < ActiveRecord::Base
  validates(:name, presence: true)
  validates(:phone_number, presence: true)
  validates(:address, presence: true)
  has_many :cars
end
