# json.extract! @guest, :name, :age, :favorite_color
json.partial! 'api/partials/guest', guest: @guest
json.gifts @guest.gifts do |gift|
    json.extract! gift, :title, :description
  end