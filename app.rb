require 'sinatra'

set :protection, except: [:json_csrf]

get '/' do
  content_type 'text/json'

  { alive: true }.to_json
end

get '/callback-redirect' do
  erb :js_redirect
end

get '/callback-form' do
  erb :js_form
end

get '/callback-meta' do
  erb :meta
end
