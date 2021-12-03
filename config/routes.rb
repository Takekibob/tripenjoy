Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'travels/hokkaido' => 'travels#hokkaido'
  get 'travels/tohoku' => 'travels#tohoku'
  get 'travels/kitakanto' => 'travels#kitakanto'
  get 'travels/shutoken' => 'travels#shutoken'
  get 'travels/izuhakone' => 'travels#izuhakone'
  get 'travels/koshinetu' => 'travels#koshinetu'
  get 'travels/hokuriku' => 'travels#hokuriku'
  get 'travels/tokai' => 'travels#tokai'
  get 'travels/kinki' => 'travels#kinki'
  get 'travels/chugoku' => 'travels#chugoku'
  get 'travels/shikoku' => 'travels#shikoku'
  get 'travels/kyushu' => 'travels#kyushu'
  get 'travels/okinawa' => 'travels#okinawa'

  resources :travels
end
