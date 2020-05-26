class ArtifactSerializer < ActiveModel::Serializer
  attributes :id, :image, :icon, :name, :rarity, :role, :description, :skill_description, :variable
end
