json.extract! @speak_locality, :id, :code
json.speak_destinies @speak_locality.speak_destinies do |speak_destiny|
    json.extract! speak_destiny, :id, :code
    json.extract! @speak_locality.destiny_cost(speak_destiny.id), :cost
end
