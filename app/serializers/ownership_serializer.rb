class OwnershipSerializer < ActiveModel::Serializer
    attributes :id, :builds, :user, :hero


    def hero
      {poster_name: self.object.hero.name}
    end 

    
  end
  