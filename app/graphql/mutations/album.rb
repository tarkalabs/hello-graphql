module Mutations
  class Album < BaseMutation
    argument :album_id, Integer, required: true
    field :approve, mutation: ApproveAlbum

    def resolve(params)
      puts params.inspect
      params
    end
  end
end
