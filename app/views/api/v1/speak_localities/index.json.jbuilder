json.array! @speak_localities do |speak_locality|
  json.extract! speak_locality, :id, :code
  json.speak_destinies speak_locality.speak_destinies do |speak_destiny|
    json.extract! speak_destiny, :code
    json.extract! speak_destiny.speak_costs.first, :cost
  end
end
