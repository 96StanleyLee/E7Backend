class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :poster

  def poster
    {poster_name: self.object.user.username}
  end 

end
