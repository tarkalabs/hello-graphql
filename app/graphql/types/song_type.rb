module Types
  class SongType < BaseObject
    implements GraphQL::Relay::Node.interface
    global_id_field :id
    #field :id, ID, null: false
    field :album, AlbumType, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
