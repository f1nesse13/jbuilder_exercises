json.array! @parties do |party|
    json.extract! party, :name, :location
    json.guests do
      json.array! party.guests do |guest|
        json.partial! 'api/partials/guest', guest: guest
      end
    end
end