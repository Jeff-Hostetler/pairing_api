Types::WineType = GraphQL::ObjectType.define do
  name "Wine"
  field :id, types.Int do
    description "ID of the wine"
  end
  field :name, types.String do
    description "Name of the wine"
  end
  field :color, types.String do
    #todo check out enum type for graphql
    description "Color of the wine. Red, white, rose, or orange"
  end
end