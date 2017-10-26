class Food < ActiveRecord::Base
  include Queryable

  #basic 'category' of food
  enum category: {
    veg: "veg",
    fruit: "fruit",
    protein: "protein",
    starch: "starch",
    sauce: "sauce"
  }
end