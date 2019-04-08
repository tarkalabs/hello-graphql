module Types
  class ReviewAuditType < BaseObject
    implements GraphQL::Relay::Node.interface
    global_id_field :id
    field :album, AlbumType, null: false
    field :person, PersonType, null: false
    field :event, String, null: false
    field :note, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def person
      RecordLoader.for(Person).load(object.person_id)
    end

    def album
      RecordLoader.for(Album).load(object.album_id)
    end
  end
end
