Rails.application.routes.draw do
  get "/first_product", controller: "products", action: "first"
  get "/all_products" => "products#all"
end
