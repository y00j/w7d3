json.extract! @party, :name
json.guests do
  json.array! @party.guests do |guest|
    json.name guest.name
    # json.array! guest.gifts
    json.gifts do
      json.array! guest.gifts, :title
    end
  end
end
