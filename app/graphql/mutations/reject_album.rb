module Mutations
  class RejectAlbum < BaseMutation
    type Types::ReviewAuditType

    def resolve()
      album = object
      ReviewAudit.create!(album_id: album.id, person_id: album.person_id, event: "REJECTED", note: "from graphql")
    end
  end
end
