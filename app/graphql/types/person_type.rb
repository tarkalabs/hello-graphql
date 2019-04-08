module Types
  class PersonType < BaseObject
    implements GraphQL::Relay::Node.interface
    global_id_field :id
    field :name, String, null: false
    field :email, String, null: false
    field :country, String, null: false
    field :albums, AlbumType.connection_type, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def albums
      AssociationLoader.for(Person, :albums).load(object)
    end
  end
end
