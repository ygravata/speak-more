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
class SpeakConnectionCost < ApplicationRecord
end
