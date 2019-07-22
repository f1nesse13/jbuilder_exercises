json.array! @guests do |guest|
  # json.name guest.name
  # json.age guest.age
  # json.favorite_color guest.favorite_color

  # json.partial! 'api/partials/guest', guest: guest
  
  json.partial! 'api/partials/guest', guest: guest if guest.age < 50 && guest.age > 40
end