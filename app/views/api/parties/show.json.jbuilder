
  json.extract! @party, :name, :location
  json.guests do
    json.array! @party.guests do |guest|
      json.partial! 'api/partials/guest', guest: guest
      json.gifts do
        json.array! guest.gifts do |gift|
        json.partial! 'api/partials/gift', gift: gift
      end
    end
  end
end