require 'sinatra'
require 'json'
require 'json/jwt'

use Rack::Session::Pool, :expire_after => 3600

get '/' do
  erb :index
end

get '/welcome' do
  if session[:attributes]
    @attributes = session[:attributes]
    @jwt = session[:jwt]
    erb :welcome
  else
    redirect '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

post '/auth/jwt' do
  jws = params[:assertion]
  secret = 'abcdABCDabcdABCDabcdABCD'

  if jws
    jwt = JSON::JWT.decode(jws.to_s, secret)

    # Ensure this app was the intended audience for the token and timings are valid
    if jwt['aud'] == 'http://localhost:8080' && Time.now > Time.at(jwt['nbf']) && Time.now < Time.at(jwt['exp'])
      attributes = jwt['https://aaf.edu.au/attributes']
      session[:attributes] = attributes
      session[:jwt] = jwt
      redirect '/welcome'
    else
      halt 500, "Audience or timings are invalid"
    end
  else
    halt 500, "Signature was invalid"
  end
end

get '/INSERT_YOUR_RAPID_CONNECT_URL_HERE' do
  erb :readme
end
