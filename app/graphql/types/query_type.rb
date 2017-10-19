Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :wines do
    type types[Types::WineType]
    argument :name, types.String
    argument :color, types.String
    description "Get wines"
    resolve ->(obj, args, context) {
      Wine.filtered_with_params(args.to_h.symbolize_keys)
    }
  end
end
