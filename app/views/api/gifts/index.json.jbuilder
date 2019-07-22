json.array! @gifts do |gift|
  # json.extract! gift, :title, :description
  json.partial! 'api/partials/gift', gift: gift
end