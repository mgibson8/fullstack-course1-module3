require 'httparty'

class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: ENV["FOOD2FORK_KEY"] = "2ac1966ebcce9f892a76613e0b8c26aa"
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
