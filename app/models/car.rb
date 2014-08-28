
# == Schema Information
#
# Table name: cars
#
#  id         :integer          not null, primary key
#  number     :string(255)
#  client_id  :integer
#  make       :string(255)
#  model      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Car < ActiveRecord::Base
  belongs_to :client
  validates(:number, presence: true)
  validates(:make, presence:true)
  validates(:model, presence:true)
  validates_format_of :number, :with => /[A-Z]{1,2} [0-9]{2} [A-Z]{3}/i, :message => "Not a valid registration plate."

end
