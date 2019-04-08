module Types
  class MutationType < Types::BaseObject
    field :album, mutation: Mutations::Album
  end
end
