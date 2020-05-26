class HeroSerializer < ActiveModel::Serializer
  attributes :id,:name, :rarity, :role, :zodiac, :icon, :image, :api_id, :description, :stats, :skills, :suggestions

end
