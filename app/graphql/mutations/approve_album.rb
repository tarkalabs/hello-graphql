module Mutations
  class ApproveAlbum < BaseMutation
    type Types::ReviewAuditType

    def resolve()
      album = ::Album.find(object[:album_id])
      ReviewAudit.create!(album_id: album.id, person_id: album.person_id, event: "APPROVED")
    end
  end
end
