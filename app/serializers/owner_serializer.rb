class OwnerSerializer
  include JSONAPI::Serializer

  has_many :animals

  attributes :name, :age, :email
end
