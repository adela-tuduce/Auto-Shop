# == Schema Information
#
# Table name: appointments
#
#  id           :integer          not null, primary key
#  car_id       :integer
#  hour         :datetime
#  workplace_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
