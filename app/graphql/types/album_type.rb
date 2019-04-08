module Types
  class AlbumType < BaseObject
    implements GraphQL::Relay::Node.interface
    global_id_field :id
    field :name, String, null: false
    field :songs, SongType.connection_type, null: false
    field :person, PersonType, null: false
    field :review_audits, ReviewAuditType.connection_type, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def songs
      AssociationLoader.for(Album, :songs).load(object)
      #object.songs
    end

    def person
      RecordLoader.for(Person).load(object.person_id)
    end

    def review_audits
      AssociationLoader.for(Album, :review_audits).load(object)
    end
  end
end
