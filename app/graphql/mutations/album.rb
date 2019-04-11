module Mutations
  class Album < BaseMutation
    argument :album_id, Integer, required: true
    field :approve, mutation: ApproveAlbum, null: true
    field :reject, mutation: RejectAlbum, null: true

    def resolve(params)
      ::Album.find(params[:album_id])
    end
  end
end
