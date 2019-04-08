module Types
  class MutationType < Types::BaseObject
    field :approve_album, mutation: Mutations::ApproveAlbum
  end
end
