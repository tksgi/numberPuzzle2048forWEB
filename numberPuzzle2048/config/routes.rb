Rails.application.routes.draw do
  get 'home/top'
  get '2048'=>'home#puzzle2048'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
