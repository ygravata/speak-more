# == Schema Information
#
# Table name: speak_costs
#
#  speak_locality_id :integer
#  speak_destiny_id  :integer
#  cost              :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class SpeakCost < ApplicationRecord
  belongs_to :speak_locality
  belongs_to :speak_destiny, :class_name => 'SpeakLocality'

end
