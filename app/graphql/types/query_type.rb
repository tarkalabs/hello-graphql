module Types
  class QueryType < BaseObject
    add_field GraphQL::Types::Relay::NodeField
    add_field GraphQL::Types::Relay::NodesField

    field :all_albums, AlbumType.connection_type, null: false
    field :album, AlbumType, null: false do
      argument :id, Integer, required: true
    end

    def all_albums
      Album.where("1=1")
    end

    def album(params)
      RecordLoader.for(Album).load(params[:id])
    end
  end
end
