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

  def self.localities_with_destinies
    self.select { |n| n.speak_costs.count > 0 }
  end

  def destiny_cost(id)
    self.speak_costs.find{|speak_cost| speak_cost.speak_destiny_id == id}
  end
end
