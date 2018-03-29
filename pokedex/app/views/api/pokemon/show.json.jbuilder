json.pokemon do
  json.extract! @pokemon,
                :id,
                :name,
                :attack,
                :defense,
                :moves,
                :poke_type
  json.image_url asset_path(@pokemon.image_url)

  # json.item_ids do
  #   item_ids = []
  #
  #   @pokemon.items.each do |item|
  #     item_ids.push(item.id)
  #   end
  #
  #   json.array! item_ids
  # end

  json.item_ids = @pokemon.items.pluck(:id)
end

json.items do
  @pokemon.items.each do |item|
    json.set! item.id do
      json.extract! item, :id, :name, :pokemon_id, :price, :happiness
      json.iamge_url asset_path(item.image_url)
    end
  end
end
