# == Schema Information
#
# Table name: speak_localities
#
#  id         :bigint           not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SpeakLocality < ApplicationRecord
  has_many :speak_costs
  has_many :speak_destinies, through: :speak_costs
end
