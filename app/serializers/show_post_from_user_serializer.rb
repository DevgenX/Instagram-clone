class ShowPostFromUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile, :bio 

  has_many :posts
end
