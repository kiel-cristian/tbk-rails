TbkRails::Engine.routes.draw do
  get '/webpay/failure'
  get '/webpay/success'
  post '/webpay/confirmation'
  post '/webpay/pay'
  root to: 'welcome#show'
end