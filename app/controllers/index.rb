

get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/' do
  username = params[:username]
  redirect "/#{username}"
end

get '/:username' do
  @username = params[:username]
  erb :user_homepage
end
