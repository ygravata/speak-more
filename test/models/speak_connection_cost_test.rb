# == Schema Information
#
# Table name: speak_connection_costs
#
#  id         :bigint           not null, primary key
#  source     :string
#  destiny    :string
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SpeakConnectionCostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
