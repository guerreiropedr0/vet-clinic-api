class VetSerializer
  include JSONAPI::Serializer

  attributes :name, :age, :graduation_date, :species
end
