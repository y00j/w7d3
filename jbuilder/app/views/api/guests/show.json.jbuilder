
  json.partial! 'api/guests/guest.json.jbuilder', guest: @guest
  json.gifts do
    json.array! @guest.gifts, :title, :description
  end
