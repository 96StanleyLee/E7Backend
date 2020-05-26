class HeroSerializer < ActiveModel::Serializer
  attributes :id,:name, :rarity, :role, :zodiac, :icon, :image, :api_id, :description, :stats, :skills, :suggestions


  def skills
    skills = self.object.skills.sort_by(&:id)
    return skills
  end 


end
