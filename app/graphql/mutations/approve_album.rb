module Mutations
  class ApproveAlbum < BaseMutation
    type Types::ReviewAuditType

    def resolve()
      album = object
      ReviewAudit.create!(album_id: album.id, person_id: album.person_id, event: "APPROVED")
    end
  end
end
