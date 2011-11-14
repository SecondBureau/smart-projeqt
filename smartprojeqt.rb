require 'rubygems'
require 'sinatra'
require 'datamapper'

get '/en' do
  redirect 'http://projeqt.com/secondbureau#lsi0ci22621q' 
end

get '/fr' do
  redirect 'http://projeqt.com/secondbureau#lsi0ci22621q' 
end

get ':anchor' do
  redirect "http://projeqt.com/secondbureau##{params[:anchor]}"
end

