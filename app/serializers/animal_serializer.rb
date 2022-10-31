class AnimalSerializer
  include JSONAPI::Serializer

  attributes :name, :birth_date, :neutered, :weight_kg, :species
end
