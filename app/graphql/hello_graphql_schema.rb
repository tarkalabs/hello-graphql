require 'graphql/batch'

class HelloGraphqlSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
  use GraphQL::Batch

  def self.id_from_object(object, _type_definition, _query_ctx)
    object.to_global_id.to_s
  end

  def self.object_from_id(id, _query_ctx)
    GlobalID::Locator.locate(id)
  end

  def self.resolve_type(_type, obj, _ctx)
    type_class = "::Types::#{obj.class}Type".safe_constantize

    rails ArgumentError, "Cannot resolve type #{object.class.name}" unless type_class.present?

    type_class
  end
end
