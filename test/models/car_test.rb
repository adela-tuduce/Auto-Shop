
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

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
