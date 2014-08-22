class Car < ActiveRecord::Base
  has_one :client
  validates(:number, presence: true)
  validates(:make, presence:true)
  validates(:model, presence:true)
  validates_format_of :number, :with => /[A-Z]{1,2} [0-9]{2} [A-Z]{3}/i, :message => "Not a valid registration plate."

end
