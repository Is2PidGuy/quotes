Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'quote.json' => 'quote#quote_json'
  get 'quote.xml' => 'quote#quote_xml'
  get 'quote.html' => 'quote#quote_html'
end
