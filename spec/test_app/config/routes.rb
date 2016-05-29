Rails.application.routes.draw do
  get '/first'  => 'page#first'
  get '/second' => 'page#second'
  get '/third'  => 'page#third'
end
