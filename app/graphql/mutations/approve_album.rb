module Mutations
  class ApproveAlbum < BaseMutation
    argument :album_id, Integer, required: true
    type Types::ReviewAuditType

    def resolve(album_id:)
      album = Album.find(album_id)
      ReviewAudit.create!(album_id: album_id, person_id: album.person_id, event: "APPROVED")
    end
  end
end
