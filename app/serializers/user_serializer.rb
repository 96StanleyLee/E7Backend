class UserSerializer < ActiveModel::Serializer
    attributes :id,:username, :user_token, :user_type
  end
  